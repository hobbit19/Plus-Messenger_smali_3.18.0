.class Lorg/telegram/ui/ChatActivity$26$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$26;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$26;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$26;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChatActivity$26;

    .prologue
    .line 2269
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$26$1;->this$1:Lorg/telegram/ui/ChatActivity$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v7, 0x0

    .line 2272
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$1;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 2273
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$26$1;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->blockUser(I)V

    .line 2275
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$1;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$1;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$1;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$1;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->reportSpam(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 2276
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$1;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9600(Lorg/telegram/ui/ChatActivity;)V

    .line 2277
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$1;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_2

    .line 2278
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$1;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2279
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$26$1;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v7}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    .line 2286
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$26$1;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->finishFragment()V

    .line 2287
    return-void

    .line 2281
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$26$1;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    neg-long v2, v2

    long-to-int v1, v2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    goto :goto_0

    .line 2284
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$26$1;->this$1:Lorg/telegram/ui/ChatActivity$26;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$26;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v7}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    goto :goto_0
.end method
