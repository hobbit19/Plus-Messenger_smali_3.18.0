.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didClickedImage(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 8
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatActionCell;

    .prologue
    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .local v1, "message":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v4, 0x280

    invoke-static {v0, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v7

    .local v7, "photoSize":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v7, :cond_0

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v6, v4, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;JJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto :goto_0
.end method

.method public didLongPressed(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 2
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatActionCell;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ChatActivity;->access$800(Lorg/telegram/ui/ChatActivity;Landroid/view/View;Z)V

    return-void
.end method

.method public didPressedBotButton(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 1
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$18700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1


    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, p2, p1, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->didPressedBotButton(Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0
.end method

.method public didPressedReplyMessage(Lorg/telegram/ui/Cells/ChatActionCell;I)V
    .locals 10
    .param p1, "cell"    # Lorg/telegram/ui/Cells/ChatActionCell;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4400(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v3, p2, v4, v2, v1}, Lorg/telegram/ui/ChatActivity;->access$3300(Lorg/telegram/ui/ChatActivity;IIZI)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public needOpenUserProfile(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x1

    if-gez p1, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "chat_id"

    neg-int v4, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v3}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v4, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v4, v2}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    if-eq p1, v3, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "args":Landroid/os/Bundle;
    const-string/jumbo v3, "user_id"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-ne p1, v3, :cond_2

    const-string/jumbo v3, "dialog_id"

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    new-instance v1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .local v1, "fragment":Lorg/telegram/ui/ProfileActivity;
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-ne v3, p1, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(Z)V

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
