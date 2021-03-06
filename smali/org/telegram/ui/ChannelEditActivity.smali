.class public Lorg/telegram/ui/ChannelEditActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChannelEditActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

.field private chatId:I

.field private checkTextView:Landroid/widget/TextView;

.field private container1:Landroid/widget/FrameLayout;

.field private container2:Landroid/widget/FrameLayout;

.field private container3:Landroid/widget/FrameLayout;

.field private createAfterUpload:Z

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private descriptionTextView:Landroid/widget/EditText;

.field private doneButton:Landroid/view/View;

.field private donePressed:Z

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private lineView:Landroid/view/View;

.field private lineView2:Landroid/view/View;

.field private linearLayout2:Landroid/widget/LinearLayout;

.field private linearLayout3:Landroid/widget/LinearLayout;

.field private nameTextView:Landroid/widget/EditText;

.field private progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private signMessages:Z

.field private textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

.field private typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 101
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 102
    new-instance v0, Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarUpdater;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    .line 103
    const-string/jumbo v0, "chat_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChannelEditActivity;->chatId:I

    .line 104
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Chat;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChannelEditActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/ChannelEditActivity;->chatId:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$InputFile;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/tgnet/TLRPC$InputFile;)Lorg/telegram/tgnet/TLRPC$InputFile;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$InputFile;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity;->uploadedAvatar:Lorg/telegram/tgnet/TLRPC$InputFile;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$FileLocation;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/AvatarDrawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ChannelEditActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->doneButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChannelEditActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditActivity;->donePressed:Z

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/ChannelEditActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditActivity;->donePressed:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChannelEditActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/Components/AvatarUpdater;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChannelEditActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditActivity;->createAfterUpload:Z

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/ChannelEditActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditActivity;->createAfterUpload:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChannelEditActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChannelEditActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChannelEditActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelEditActivity;->signMessages:Z

    return v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/ChannelEditActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChannelEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelEditActivity;->signMessages:Z

    return p1
.end method

.method private updateAdminCell()V
    .locals 6

    .prologue
    const v2, 0x7f07010b

    const/4 v5, 0x0

    .line 624
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    if-nez v0, :cond_0

    .line 632
    :goto_0
    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v1, "ChannelAdministrators"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->admins_count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 630
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v1, "ChannelAdministrators"

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateTypeCell()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 592
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string/jumbo v1, "ChannelTypePrivate"

    const v2, 0x7f070151

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "type":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_3

    .line 594
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v2, "GroupType"

    const v3, 0x7f0702ae

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 599
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_username:Z

    if-eqz v1, :cond_4

    .line 600
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v2, Lorg/telegram/ui/ChannelEditActivity$11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelEditActivity$11;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, "windowBackgroundWhiteBlackText"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 611
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->getValueTextView()Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, "windowBackgroundWhiteValueText"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 612
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v2, "windowBackgroundWhiteBlackText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 613
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v2, "windowBackgroundWhiteValueText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextValueColor(I)V

    .line 621
    :goto_2
    return-void

    .line 592
    .end local v0    # "type":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "ChannelTypePublic"

    const v2, 0x7f070152

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 596
    .restart local v0    # "type":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v2, "ChannelType"

    const v3, 0x7f070150

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 615
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, "windowBackgroundWhiteGrayText"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 617
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->getValueTextView()Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, "windowBackgroundWhiteGrayText"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 618
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v2, "windowBackgroundWhiteGrayText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 619
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v2, "windowBackgroundWhiteGrayText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextValueColor(I)V

    goto :goto_2
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ChannelEditActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditActivity$2;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v10

    .line 233
    .local v10, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v0, 0x1

    const v1, 0x7f0200d9

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v10, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->doneButton:Landroid/view/View;

    .line 237
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->fragmentView:Landroid/view/View;

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->fragmentView:Landroid/view/View;

    const-string/jumbo v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 239
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->fragmentView:Landroid/view/View;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 240
    iget-object v11, p0, Lorg/telegram/ui/ChannelEditActivity;->fragmentView:Landroid/view/View;

    check-cast v11, Landroid/widget/ScrollView;

    .line 241
    .local v11, "scrollView":Landroid/widget/ScrollView;
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 242
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 243
    .local v9, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v9, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "ChannelEdit"

    const v2, 0x7f07011b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 249
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout2:Landroid/widget/LinearLayout;

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 256
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setDrawPhoto(Z)V

    .line 262
    iget-object v12, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x40

    const/high16 v1, 0x42800000    # 64.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    :goto_1
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    :goto_2
    const/high16 v4, 0x41400000    # 12.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_6

    const/high16 v5, 0x41800000    # 16.0f

    :goto_3
    const/high16 v6, 0x41400000    # 12.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v12, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v1, Lorg/telegram/ui/ChannelEditActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditActivity$3;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    .line 298
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_7

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const-string/jumbo v1, "GroupName"

    const v2, 0x7f0702aa

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 303
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 304
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    :goto_5
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const-string/jumbo v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->profileRowTitleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const/16 v1, 0x4001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 313
    const/4 v0, 0x1

    new-array v8, v0, [Landroid/text/InputFilter;

    .line 314
    .local v8, "inputFilters":[Landroid/text/InputFilter;
    const/4 v0, 0x0

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v8, v0

    .line 315
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 318
    iget-object v12, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x10

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_9

    const/high16 v3, 0x41800000    # 16.0f

    :goto_6
    const/4 v4, 0x0

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_a

    const/high16 v5, 0x42c00000    # 96.0f

    :goto_7
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v12, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChannelEditActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditActivity$4;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 337
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->lineView:Landroid/view/View;

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->lineView:Landroid/view/View;

    const-string/jumbo v1, "divider"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->lineView:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout3:Landroid/widget/LinearLayout;

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout3:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 343
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout3:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 344
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 345
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout3:Landroid/widget/LinearLayout;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout3:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const-string/jumbo v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 352
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->profileRowTitleColor:I

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 353
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 355
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x5

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 356
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const v1, 0x2c001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 358
    const/4 v0, 0x1

    new-array v8, v0, [Landroid/text/InputFilter;

    .line 359
    const/4 v0, 0x0

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0xff

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v8, v0

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const-string/jumbo v1, "DescriptionOptionalPlaceholder"

    const v2, 0x7f0701f3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 363
    iget-object v6, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout3:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/high16 v2, 0x41880000    # 17.0f

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x41880000    # 17.0f

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChannelEditActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditActivity$5;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 374
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChannelEditActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditActivity$6;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 391
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 392
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setSize(I)V

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container1:Landroid/widget/FrameLayout;

    .line 396
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container1:Landroid/widget/FrameLayout;

    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 397
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container1:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 400
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditActivity;->updateTypeCell()V

    .line 401
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container1:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->lineView2:Landroid/view/View;

    .line 405
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->lineView2:Landroid/view/View;

    const-string/jumbo v1, "divider"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 406
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->lineView2:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container2:Landroid/widget/FrameLayout;

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container2:Landroid/widget/FrameLayout;

    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 410
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container2:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_d

    .line 413
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const-string/jumbo v1, "ChannelSignMessages"

    const v2, 0x7f07014d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/ChannelEditActivity;->signMessages:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 416
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container2:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v1, Lorg/telegram/ui/ChannelEditActivity$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditActivity$7;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 426
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const v1, 0x7f0200ae

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v1, "ChannelSignMessagesInfo"

    const v2, 0x7f07014e

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    :cond_0
    :goto_a
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_1

    .line 453
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container3:Landroid/widget/FrameLayout;

    .line 454
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container3:Landroid/widget/FrameLayout;

    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 455
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container3:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 458
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v1, "windowBackgroundWhiteRedText5"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 459
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 460
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_e

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v1, "DeleteMega"

    const v2, 0x7f0701ea

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    .line 465
    :goto_b
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container3:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v1, Lorg/telegram/ui/ChannelEditActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditActivity$9;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 495
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const v1, 0x7f0200af

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_f

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v1, "MegaDeleteInfo"

    const v2, 0x7f070372

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 501
    :goto_c
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_2

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 509
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v0, :cond_10

    .line 510
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 511
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v2, "50_50"

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 516
    :goto_d
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 239
    .end local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v8    # "inputFilters":[Landroid/text/InputFilter;
    .end local v9    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v11    # "scrollView":Landroid/widget/ScrollView;
    :cond_3
    const v0, -0xf0f10

    goto/16 :goto_0

    .line 262
    .restart local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v9    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v11    # "scrollView":Landroid/widget/ScrollView;
    :cond_4
    const/4 v2, 0x3

    goto/16 :goto_1

    :cond_5
    const/high16 v3, 0x41800000    # 16.0f

    goto/16 :goto_2

    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 301
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    const-string/jumbo v1, "EnterChannelName"

    const v2, 0x7f070236

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 304
    :cond_8
    const/4 v0, 0x3

    goto/16 :goto_5

    .line 318
    .restart local v8    # "inputFilters":[Landroid/text/InputFilter;
    :cond_9
    const/high16 v3, 0x42c00000    # 96.0f

    goto/16 :goto_6

    :cond_a
    const/high16 v5, 0x41800000    # 16.0f

    goto/16 :goto_7

    .line 352
    :cond_b
    const v0, -0xdededf

    goto/16 :goto_8

    .line 355
    :cond_c
    const/4 v0, 0x3

    goto/16 :goto_9

    .line 430
    :cond_d
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 431
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditActivity;->updateAdminCell()V

    .line 432
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->container2:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v1, Lorg/telegram/ui/ChannelEditActivity$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelEditActivity$8;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 445
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setSize(I)V

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const v1, 0x7f0200af

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    .line 463
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v1, "ChannelDelete"

    const v2, 0x7f070117

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_b

    .line 499
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v1, "ChannelDeleteInfo"

    const v2, 0x7f070119

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 513
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 521
    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    if-ne p1, v2, :cond_2

    .line 522
    aget-object v0, p2, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 523
    .local v0, "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    iget v3, p0, Lorg/telegram/ui/ChannelEditActivity;->chatId:I

    if-ne v2, v3, :cond_1

    .line 524
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v2, :cond_0

    .line 525
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 527
    :cond_0
    iput-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 528
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditActivity;->updateAdminCell()V

    .line 529
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditActivity;->updateTypeCell()V

    .line 537
    .end local v0    # "chatFull":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_1
    :goto_0
    return-void

    .line 531
    :cond_2
    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v2, :cond_1

    .line 532
    aget-object v2, p2, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 533
    .local v1, "updateMask":I
    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_1

    .line 534
    invoke-direct {p0}, Lorg/telegram/ui/ChannelEditActivity;->updateTypeCell()V

    goto :goto_0
.end method

.method public didUploadedPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 1
    .param p1, "file"    # Lorg/telegram/tgnet/TLRPC$InputFile;
    .param p2, "small"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .param p3, "big"    # Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .prologue
    .line 541
    new-instance v0, Lorg/telegram/ui/ChannelEditActivity$10;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/ChannelEditActivity$10;-><init>(Lorg/telegram/ui/ChannelEditActivity;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 560
    return-void
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 12

    .prologue
    .line 636
    new-instance v9, Lorg/telegram/ui/ChannelEditActivity$12;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChannelEditActivity$12;-><init>(Lorg/telegram/ui/ChannelEditActivity;)V

    .line 645
    .local v9, "\u0441ellDelegate":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    const/16 v0, 0x2a

    new-array v10, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteHintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteInputField"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

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

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->descriptionTextView:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteHintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->linearLayout3:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->container1:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->container2:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->container3:Landroid/widget/FrameLayout;

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

    const/16 v8, 0x11

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

    const/16 v8, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->lineView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->lineView2:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

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

    const/16 v11, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteValueText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

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

    const/16 v11, 0x1c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchThumb"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchTrack"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchThumbChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x1f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->textCheckCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchTrackChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x20

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

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

    const/16 v11, 0x21

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v2, 0x0

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

    const/16 v8, 0x22

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x23

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

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

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteValueText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x25

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x26

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x27

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteRedText5"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x28

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

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

    const/16 v11, 0x29

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->infoCell2:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v2, 0x0

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

    return-object v10
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 564
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AvatarUpdater;->onActivityResult(IILandroid/content/Intent;)V

    .line 565
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ChannelEditActivity;->chatId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 110
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v3, :cond_1

    .line 111
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 112
    .local v1, "semaphore":Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChannelEditActivity$1;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/ChannelEditActivity$1;-><init>(Lorg/telegram/ui/ChannelEditActivity;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 120
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_0

    .line 125
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 129
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v3, :cond_1

    .line 130
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ChannelEditActivity;->chatId:I

    invoke-virtual {v3, v4, v1, v2, v2}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(ILjava/util/concurrent/Semaphore;ZZ)V

    .line 132
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v3, :cond_1

    .line 146
    .end local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_0
    :goto_2
    return v2

    .line 121
    .restart local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 134
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v2, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 142
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v2, Lorg/telegram/ui/Components/AvatarUpdater;->delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

    .line 143
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    iput-boolean v2, p0, Lorg/telegram/ui/ChannelEditActivity;->signMessages:Z

    .line 144
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 145
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 146
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v2

    goto :goto_2
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->clear()V

    .line 155
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 156
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 157
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelEditActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelEditActivity;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    .line 158
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 163
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelEditActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChannelEditActivity;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 164
    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 582
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    const-string/jumbo v1, "path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    .line 585
    :cond_0
    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 569
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 570
    const-string/jumbo v1, "path"

    iget-object v2, p0, Lorg/telegram/ui/ChannelEditActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v2, v2, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 573
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditActivity;->nameTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 575
    const-string/jumbo v1, "nameTextView"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0
    .param p1, "chatFull"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 588
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 589
    return-void
.end method
