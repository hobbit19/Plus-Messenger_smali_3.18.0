.class public Lorg/telegram/ui/ChannelCreateActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChannelCreateActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private adminedChannelCells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Cells/AdminedChannelCell;",
            ">;"
        }
    .end annotation
.end field

.field private adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private adminnedChannelsLayout:Landroid/widget/LinearLayout;

.field private avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

.field private canCreatePublic:Z

.field private chatId:I

.field private checkReqId:I

.field private checkRunnable:Ljava/lang/Runnable;

.field private checkTextView:Landroid/widget/TextView;

.field private createAfterUpload:Z

.field private currentStep:I

.field private descriptionTextView:Landroid/widget/EditText;

.field private doneButton:Landroid/view/View;

.field private donePressed:Z

.field private editText:Landroid/widget/EditText;

.field private headerCell:Lorg/telegram/ui/Cells/HeaderCell;

.field private helpTextView:Landroid/widget/TextView;

.field private invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

.field private isPrivate:Z

.field private lastCheckName:Ljava/lang/String;

.field private lastNameAvailable:Z

.field private linearLayout:Landroid/widget/LinearLayout;

.field private linearLayout2:Landroid/widget/LinearLayout;

.field private linkContainer:Landroid/widget/LinearLayout;

.field private loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

.field private loadingAdminedChannels:Z

.field private loadingInvite:Z

.field private nameTextView:Landroid/widget/EditText;

.field private nameToSet:Ljava/lang/String;

.field private privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

.field private progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private publicContainer:Landroid/widget/LinearLayout;

.field private radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

.field private radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

.field private sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 117
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 103
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminedChannelCells:Ljava/util/ArrayList;

    .line 108
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z

    .line 118
    const-string/jumbo v3, "step"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    .line 119
    iget v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    if-nez v3, :cond_0

    .line 120
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 121
    new-instance v1, Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarUpdater;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    .line 123
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;-><init>()V

    .line 124
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;
    const-string/jumbo v1, "1"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->username:Ljava/lang/String;

    .line 125
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 126
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelCreateActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelCreateActivity$1;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 147
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;
    :goto_0
    return-void

    .line 138
    :cond_0
    iget v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    if-ne v3, v1, :cond_1

    .line 139
    const-string/jumbo v3, "canCreatePublic"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z

    .line 140
    iget-boolean v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z

    if-nez v3, :cond_2

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    .line 141
    iget-boolean v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z

    if-nez v1, :cond_1

    .line 142
    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->loadAdminedChannels()V

    .line 145
    :cond_1
    const-string/jumbo v1, "chat_id"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->chatId:I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 140
    goto :goto_1
.end method

.method static synthetic access$002(Lorg/telegram/ui/ChannelCreateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChannelCreateActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    iget v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChannelCreateActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    iget v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->chatId:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->lastCheckName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$FileLocation;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object p1
.end method

.method static synthetic access$1402(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$InputFile;)Lorg/telegram/tgnet/TLRPC$InputFile;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$InputFile;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/AvatarDrawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->doneButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ChannelCreateActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->updatePrivatePublic()V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ChannelCreateActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelCreateActivity;->checkUserName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChannelCreateActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->donePressed:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    return-object v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    return-object p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/ChannelCreateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->donePressed:Z

    return p1
.end method

.method static synthetic access$2102(Lorg/telegram/ui/ChannelCreateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingInvite:Z

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Cells/TextBlockCell;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    return-object v0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/ChannelCreateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingAdminedChannels:Z

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminedChannelCells:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/ChannelCreateActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkReqId:I

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ChannelCreateActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->loadAdminedChannels()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/AvatarUpdater;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChannelCreateActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->createAfterUpload:Z

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/ChannelCreateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->createAfterUpload:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChannelCreateActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    return v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/ChannelCreateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChannelCreateActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->lastNameAvailable:Z

    return v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/ChannelCreateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->lastNameAvailable:Z

    return p1
.end method

.method private checkUserName(Ljava/lang/String;)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const v8, 0x7f07034c

    const/16 v7, 0x39

    const/16 v6, 0x30

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 845
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 846
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 850
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 851
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkRunnable:Ljava/lang/Runnable;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 852
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkRunnable:Ljava/lang/Runnable;

    .line 853
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->lastCheckName:Ljava/lang/String;

    .line 854
    iget v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkReqId:I

    if-eqz v4, :cond_0

    .line 855
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkReqId:I

    invoke-virtual {v4, v5, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 858
    :cond_0
    iput-boolean v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->lastNameAvailable:Z

    .line 859
    if-eqz p1, :cond_9

    .line 860
    const-string/jumbo v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 861
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalid"

    invoke-static {v4, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 863
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 937
    :goto_1
    return v2

    .line 848
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 866
    :cond_3
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_9

    .line 867
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 868
    .local v1, "ch":C
    if-nez v0, :cond_4

    if-lt v1, v6, :cond_4

    if-gt v1, v7, :cond_4

    .line 869
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalidStartNumber"

    const v5, 0x7f070350

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 870
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 871
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 874
    :cond_4
    if-lt v1, v6, :cond_5

    if-le v1, v7, :cond_8

    :cond_5
    const/16 v4, 0x61

    if-lt v1, v4, :cond_6

    const/16 v4, 0x7a

    if-le v1, v4, :cond_8

    :cond_6
    const/16 v4, 0x41

    if-lt v1, v4, :cond_7

    const/16 v4, 0x5a

    if-le v1, v4, :cond_8

    :cond_7
    const/16 v4, 0x5f

    if-eq v1, v4, :cond_8

    .line 875
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalid"

    invoke-static {v4, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 877
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 866
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 882
    .end local v0    # "a":I
    .end local v1    # "ch":C
    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_b

    .line 883
    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalidShort"

    const v5, 0x7f07034e

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 885
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 888
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-le v4, v5, :cond_c

    .line 889
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkInvalidLong"

    const v5, 0x7f07034d

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 891
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 895
    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "LinkChecking"

    const v5, 0x7f070348

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 896
    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteGrayText8"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 897
    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "windowBackgroundWhiteGrayText8"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 898
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity;->lastCheckName:Ljava/lang/String;

    .line 899
    new-instance v2, Lorg/telegram/ui/ChannelCreateActivity$14;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ChannelCreateActivity$14;-><init>(Lorg/telegram/ui/ChannelCreateActivity;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkRunnable:Ljava/lang/Runnable;

    .line 936
    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    move v2, v3

    .line 937
    goto/16 :goto_1
.end method

.method private generateLink()V
    .locals 3

    .prologue
    .line 600
    iget-boolean v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingInvite:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    if-eqz v1, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingInvite:Z

    .line 604
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;-><init>()V

    .line 605
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;
    iget v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->chatId:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 606
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelCreateActivity$11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelCreateActivity$11;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method private loadAdminedChannels()V
    .locals 3

    .prologue
    .line 767
    iget-boolean v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingAdminedChannels:Z

    if-eqz v1, :cond_0

    .line 842
    :goto_0
    return-void

    .line 770
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingAdminedChannels:Z

    .line 771
    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->updatePrivatePublic()V

    .line 772
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;-><init>()V

    .line 773
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelCreateActivity$13;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelCreateActivity$13;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method private showErrorAlert(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 941
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 962
    :goto_0
    return-void

    .line 944
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ChannelCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 945
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f070078

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 946
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 957
    const-string/jumbo v1, "ErrorOccurred"

    const v2, 0x7f07023f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 960
    :goto_2
    const-string/jumbo v1, "OK"

    const v2, 0x7f070452

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 961
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChannelCreateActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 946
    :sswitch_0
    const-string/jumbo v2, "USERNAME_INVALID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "USERNAME_OCCUPIED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "USERNAMES_UNAVAILABLE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    .line 948
    :pswitch_0
    const-string/jumbo v1, "LinkInvalid"

    const v2, 0x7f07034c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_2

    .line 951
    :pswitch_1
    const-string/jumbo v1, "LinkInUse"

    const v2, 0x7f07034a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_2

    .line 954
    :pswitch_2
    const-string/jumbo v1, "FeatureUnavailable"

    const v2, 0x7f070246

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_2

    .line 946
    :sswitch_data_0
    .sparse-switch
        -0x87506d2 -> :sswitch_2
        0x1137676e -> :sswitch_0
        0x1fc79be7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updatePrivatePublic()V
    .locals 7

    .prologue
    const v6, 0x7f0200af

    const/4 v3, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 624
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    if-nez v0, :cond_0

    .line 665
    :goto_0
    return-void

    .line 627
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z

    if-nez v0, :cond_3

    .line 628
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v4, "ChangePublicLimitReached"

    const v5, 0x7f070102

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTag(Ljava/lang/Object;)V

    .line 630
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v4, "windowBackgroundWhiteRedText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    .line 631
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setVisibility(I)V

    .line 633
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingAdminedChannels:Z

    if-eqz v0, :cond_2

    .line 634
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/LoadingCell;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "windowBackgroundGrayShadow"

    invoke-static {v4, v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 637
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setVisibility(I)V

    .line 661
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-nez v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/RadioButtonCell;->setChecked(ZZ)V

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Cells/RadioButtonCell;->setChecked(ZZ)V

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 664
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_0

    .line 639
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0200ae

    const-string/jumbo v6, "windowBackgroundGrayShadow"

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/LoadingCell;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setVisibility(I)V

    goto :goto_1

    .line 645
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v4, "windowBackgroundWhiteGrayText4"

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTag(Ljava/lang/Object;)V

    .line 646
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v4, "windowBackgroundWhiteGrayText4"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setVisibility(I)V

    .line 648
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setVisibility(I)V

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 650
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "windowBackgroundGrayShadow"

    invoke-static {v4, v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 652
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/LoadingCell;->setVisibility(I)V

    .line 653
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "ChannelPrivateLinkHelp"

    const v5, 0x7f070146

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "ChannelInviteLinkTitle"

    const v5, 0x7f07011d

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    .line 655
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->publicContainer:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 656
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-eqz v0, :cond_8

    move v0, v2

    :goto_5
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Cells/TextBlockCell;->setVisibility(I)V

    .line 657
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-eqz v0, :cond_9

    move v0, v2

    :goto_6
    invoke-virtual {v4, v2, v2, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 658
    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->link:Ljava/lang/String;

    :goto_7
    invoke-virtual {v4, v0, v2}, Lorg/telegram/ui/Cells/TextBlockCell;->setText(Ljava/lang/String;Z)V

    .line 659
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    iget-boolean v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 653
    :cond_5
    const-string/jumbo v0, "ChannelUsernameHelp"

    const v5, 0x7f070159

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 654
    :cond_6
    const-string/jumbo v0, "ChannelLinkTitle"

    const v5, 0x7f070125

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    move v0, v2

    .line 655
    goto :goto_4

    :cond_8
    move v0, v1

    .line 656
    goto :goto_5

    .line 657
    :cond_9
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_6

    .line 658
    :cond_a
    const-string/jumbo v0, "Loading"

    const v5, 0x7f070356

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private updateTheme()V
    .locals 3

    .prologue
    .line 592
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 593
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 594
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 595
    .local v0, "back":Landroid/graphics/drawable/Drawable;
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 596
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 597
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ChannelCreateActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelCreateActivity$2;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v10

    .line 279
    .local v10, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 281
    .local v7, "done":Landroid/graphics/drawable/Drawable;
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 282
    const/4 v0, 0x1

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v10, v0, v7, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(ILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->doneButton:Landroid/view/View;

    .line 284
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->fragmentView:Landroid/view/View;

    .line 285
    iget-object v11, p0, Lorg/telegram/ui/ChannelCreateActivity;->fragmentView:Landroid/view/View;

    check-cast v11, Landroid/widget/ScrollView;

    .line 286
    .local v11, "scrollView":Landroid/widget/ScrollView;
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 287
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    if-nez v0, :cond_c

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "NewChannel"

    const v2, 0x7f0703be

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->fragmentView:Landroid/view/View;

    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->fragmentView:Landroid/view/View;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 296
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 297
    .local v8, "frameLayout":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefAvatarRadius:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setDrawPhoto(Z)V

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefAvatarColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefAvatarRadius:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setRadius(I)V

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    iget-object v12, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x40

    const/high16 v1, 0x42800000    # 64.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    :goto_0
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    :goto_1
    const/high16 v4, 0x41400000    # 12.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_5

    const/high16 v5, 0x41800000    # 16.0f

    :goto_2
    const/high16 v6, 0x41400000    # 12.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v12, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v1, Lorg/telegram/ui/ChannelCreateActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelCreateActivity$3;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    .line 343
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 344
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const-string/jumbo v1, "EnterChannelName"

    const v2, 0x7f070236

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameToSet:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameToSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameToSet:Ljava/lang/String;

    .line 349
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 350
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    :goto_3
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 356
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/16 v1, 0x4001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    const/4 v0, 0x1

    new-array v9, v0, [Landroid/text/InputFilter;

    .line 360
    .local v9, "inputFilters":[Landroid/text/InputFilter;
    const/4 v0, 0x0

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v9, v0

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 362
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 364
    iget-object v12, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x10

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_7

    const/high16 v3, 0x41800000    # 16.0f

    :goto_4
    const/4 v4, 0x0

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_8

    const/high16 v5, 0x42c00000    # 96.0f

    :goto_5
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v12, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChannelCreateActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelCreateActivity$4;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 384
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    .line 385
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    const-string/jumbo v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 391
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 392
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 393
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 394
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    const v1, 0x2c001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 396
    const/4 v0, 0x1

    new-array v9, v0, [Landroid/text/InputFilter;

    .line 397
    const/4 v0, 0x0

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x78

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v9, v0

    .line 398
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 399
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    const-string/jumbo v1, "DescriptionPlaceholder"

    const v2, 0x7f0701f4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 401
    iget-object v6, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/high16 v2, 0x41c00000    # 24.0f

    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v4, 0x41c00000    # 24.0f

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChannelCreateActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelCreateActivity$5;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 412
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChannelCreateActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelCreateActivity$6;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 429
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->helpTextView:Landroid/widget/TextView;

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->helpTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->helpTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteGrayText8"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 432
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->helpTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 433
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->helpTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x5

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->helpTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "DescriptionInfo"

    const v2, 0x7f0701f1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v12, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v13, p0, Lorg/telegram/ui/ChannelCreateActivity;->helpTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_b

    const/4 v2, 0x5

    :goto_8
    const/16 v3, 0x18

    const/16 v4, 0xa

    const/16 v5, 0x18

    const/16 v6, 0x14

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 587
    .end local v8    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v9    # "inputFilters":[Landroid/text/InputFilter;
    :cond_1
    :goto_9
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->updateTheme()V

    .line 588
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 307
    .restart local v8    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_3
    const/4 v2, 0x3

    goto/16 :goto_0

    :cond_4
    const/high16 v3, 0x41800000    # 16.0f

    goto/16 :goto_1

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 350
    :cond_6
    const/4 v0, 0x3

    goto/16 :goto_3

    .line 364
    .restart local v9    # "inputFilters":[Landroid/text/InputFilter;
    :cond_7
    const/high16 v3, 0x42c00000    # 96.0f

    goto/16 :goto_4

    :cond_8
    const/high16 v5, 0x41800000    # 16.0f

    goto/16 :goto_5

    .line 393
    :cond_9
    const/4 v0, 0x3

    goto/16 :goto_6

    .line 433
    :cond_a
    const/4 v0, 0x3

    goto :goto_7

    .line 435
    :cond_b
    const/4 v2, 0x3

    goto :goto_8

    .line 436
    .end local v8    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v9    # "inputFilters":[Landroid/text/InputFilter;
    :cond_c
    iget v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "ChannelSettings"

    const v2, 0x7f07014c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->fragmentView:Landroid/view/View;

    const-string/jumbo v1, "windowBackgroundGray"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->fragmentView:Landroid/view/View;

    const-string/jumbo v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->fragmentView:Landroid/view/View;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefShadowColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 441
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout2:Landroid/widget/LinearLayout;

    .line 442
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 443
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 444
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 445
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    new-instance v0, Lorg/telegram/ui/Cells/RadioButtonCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/RadioButtonCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/RadioButtonCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 449
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    const-string/jumbo v0, "ChannelPublic"

    const v2, 0x7f070147

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "ChannelPublicInfo"

    const v3, 0x7f070149

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v1, v2, v3, v0}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 450
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    new-instance v1, Lorg/telegram/ui/ChannelCreateActivity$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelCreateActivity$7;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/RadioButtonCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    new-instance v0, Lorg/telegram/ui/Cells/RadioButtonCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/RadioButtonCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    .line 463
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/RadioButtonCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    const-string/jumbo v1, "ChannelPrivate"

    const v2, 0x7f070144

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ChannelPrivateInfo"

    const v3, 0x7f070145

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->isPrivate:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 465
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    new-instance v1, Lorg/telegram/ui/ChannelCreateActivity$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelCreateActivity$8;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/RadioButtonCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 489
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->publicContainer:Landroid/widget/LinearLayout;

    .line 490
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->publicContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 491
    iget-object v6, p0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lorg/telegram/ui/ChannelCreateActivity;->publicContainer:Landroid/widget/LinearLayout;

    const/4 v0, -0x1

    const/16 v1, 0x24

    const/high16 v2, 0x41880000    # 17.0f

    const/high16 v3, 0x40e00000    # 7.0f

    const/high16 v4, 0x41880000    # 17.0f

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->editText:Landroid/widget/EditText;

    .line 494
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->editText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->editText:Landroid/widget/EditText;

    const-string/jumbo v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->editText:Landroid/widget/EditText;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 498
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->editText:Landroid/widget/EditText;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 499
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->editText:Landroid/widget/EditText;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 500
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 501
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 503
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 504
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 505
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->editText:Landroid/widget/EditText;

    const v1, 0x28000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->publicContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->editText:Landroid/widget/EditText;

    const/4 v2, -0x2

    const/16 v3, 0x24

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    .line 511
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 512
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const-string/jumbo v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 513
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 514
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 516
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 517
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 518
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 519
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 520
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 521
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const v1, 0x28020

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 523
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const-string/jumbo v1, "ChannelUsernamePlaceholder"

    const v2, 0x7f07015a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->publicContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v2, -0x1

    const/16 v3, 0x24

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChannelCreateActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelCreateActivity$9;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 543
    new-instance v0, Lorg/telegram/ui/Cells/TextBlockCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextBlockCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextBlockCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 545
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 546
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    new-instance v1, Lorg/telegram/ui/ChannelCreateActivity$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelCreateActivity$10;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextBlockCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 565
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x5

    :goto_b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    iget-object v12, p0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-object v13, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_f

    const/4 v2, 0x5

    :goto_c
    const/16 v3, 0x11

    const/4 v4, 0x3

    const/16 v5, 0x11

    const/4 v6, 0x7

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const v1, 0x7f0200af

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 571
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    new-instance v0, Lorg/telegram/ui/Cells/LoadingCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    .line 577
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 578
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 579
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 582
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const v1, 0x7f0200af

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 583
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->updatePrivatePublic()V

    goto/16 :goto_9

    .line 449
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_a

    .line 565
    :cond_e
    const/4 v0, 0x3

    goto/16 :goto_b

    .line 567
    :cond_f
    const/4 v2, 0x3

    goto/16 :goto_c
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 737
    sget v3, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I

    if-ne p1, v3, :cond_2

    .line 738
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v3, :cond_0

    .line 740
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->donePressed:Z

    .line 764
    :cond_1
    :goto_1
    return-void

    .line 741
    :catch_0
    move-exception v2

    .line 742
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 746
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    sget v3, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    if-ne p1, v3, :cond_1

    .line 747
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v3, :cond_3

    .line 749
    :try_start_1
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 754
    :cond_3
    :goto_2
    aget-object v3, p2, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 755
    .local v1, "chat_id":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 756
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "step"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 757
    const-string/jumbo v3, "chat_id"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 758
    const-string/jumbo v3, "canCreatePublic"

    iget-boolean v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->canCreatePublic:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 759
    iget-object v3, p0, Lorg/telegram/ui/ChannelCreateActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-eqz v3, :cond_4

    .line 760
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelCreateActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

    invoke-virtual {v3, v1, v4}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(ILorg/telegram/tgnet/TLRPC$InputFile;)V

    .line 762
    :cond_4
    new-instance v3, Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChannelCreateActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3, v5}, Lorg/telegram/ui/ChannelCreateActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_1

    .line 750
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "chat_id":I
    :catch_1
    move-exception v2

    .line 751
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public didUploadedPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 1
    .param p1, "file"    # Lorg/telegram/tgnet/TLRPC$InputFile;
    .param p2, "small"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .param p3, "big"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .prologue
    .line 669
    new-instance v0, Lorg/telegram/ui/ChannelCreateActivity$12;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/ChannelCreateActivity$12;-><init>(Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 688
    return-void
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 12

    .prologue
    .line 966
    new-instance v9, Lorg/telegram/ui/ChannelCreateActivity$15;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChannelCreateActivity$15;-><init>(Lorg/telegram/ui/ChannelCreateActivity;)V

    .line 985
    .local v9, "\u0441ellDelegate":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    const/16 v0, 0x36

    new-array v10, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteHintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteInputField"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteHintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteInputField"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->descriptionTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->helpTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteGrayText8"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->linkContainer:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlueHeader"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->editText:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->editText:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteHintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteRedText4"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteGrayText8"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->checkTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteGreenText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText4"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteRedText4"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x1e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->privateContainer:Lorg/telegram/ui/Cells/TextBlockCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextBlockCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LoadingCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "progressBar"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "progressCircle"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x20

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x21

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "radioBackground"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x22

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "radioBackgroundChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x23

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x24

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x25

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x26

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "radioBackground"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x27

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "radioBackgroundChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x28

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x29

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x2a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/AdminedChannelCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "nameTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x2b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/AdminedChannelCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "statusTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x2c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/AdminedChannelCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "statusTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteLinkText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x2d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/AdminedChannelCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "deleteButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x2e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const-string/jumbo v7, "avatar_text"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundRed"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x30

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundOrange"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x31

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundViolet"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x32

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundGreen"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x33

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundCyan"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x34

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundBlue"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x35

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundPink"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    return-object v10
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 692
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AvatarUpdater;->onActivityResult(IILandroid/content/Intent;)V

    .line 693
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 153
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 154
    iget v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 155
    invoke-direct {p0}, Lorg/telegram/ui/ChannelCreateActivity;->generateLink()V

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v0, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v0, Lorg/telegram/ui/Components/AvatarUpdater;->delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

    .line 161
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 167
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 168
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidFailCreate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->clear()V

    .line 172
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    .line 173
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 178
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 179
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 2
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 729
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 730
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 731
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 733
    :cond_0
    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 712
    iget v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    if-nez v1, :cond_1

    .line 713
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v1, :cond_0

    .line 714
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    const-string/jumbo v2, "path"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    .line 716
    :cond_0
    const-string/jumbo v1, "nameTextView"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 718
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 719
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 725
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 721
    .restart local v0    # "text":Ljava/lang/String;
    :cond_2
    iput-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameToSet:Ljava/lang/String;

    goto :goto_0
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 697
    iget v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->currentStep:I

    if-nez v1, :cond_1

    .line 698
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 699
    const-string/jumbo v1, "path"

    iget-object v2, p0, Lorg/telegram/ui/ChannelCreateActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v2, v2, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 702
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 704
    const-string/jumbo v1, "nameTextView"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    return-void
.end method
