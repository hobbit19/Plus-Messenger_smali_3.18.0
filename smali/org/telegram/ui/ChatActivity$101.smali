.class Lorg/telegram/ui/ChatActivity$101;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->checkEditTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 9865
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$101;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 9868
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$101;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17600(Lorg/telegram/ui/ChatActivity;)V

    .line 9869
    return-void
.end method
