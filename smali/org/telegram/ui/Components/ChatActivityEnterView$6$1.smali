.class Lorg/telegram/ui/Components/ChatActivityEnterView$6$1;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView$6;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$6;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView$6;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/ChatActivityEnterView$6;

    .prologue
    .line 559
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$6$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommitContent(Landroid/support/v13/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 10
    .param p1, "inputContentInfo"    # Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 562
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastNMR1()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/support/v13/view/inputmethod/InputConnectionCompat;->INPUT_CONTENT_GRANT_READ_URI_PERMISSION:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    .line 564
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->requestPermission()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :cond_0
    invoke-virtual {p1}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v8

    .line 570
    .local v8, "description":Landroid/content/ClipDescription;
    const-string/jumbo v1, "image/gif"

    invoke-virtual {v8, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 571
    invoke-virtual {p1}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "image/gif"

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$6$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$6;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$6;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v4

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$6$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$6;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$6;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    move-object v1, v0

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocument(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    .line 575
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$6$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$6;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$6;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 576
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$6$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$6;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$6;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    .line 578
    :cond_1
    const/4 v0, 0x1

    .end local v8    # "description":Landroid/content/ClipDescription;
    :goto_1
    return v0

    .line 565
    :catch_0
    move-exception v9

    .line 566
    .local v9, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_1

    .line 573
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "description":Landroid/content/ClipDescription;
    :cond_2
    invoke-virtual {p1}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$6$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$6;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView$6;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$6$1;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$6;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatActivityEnterView$6;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    move-object v5, v0

    move-object v6, v0

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhoto(Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    goto :goto_0
.end method
