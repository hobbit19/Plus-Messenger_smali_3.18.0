.class Lorg/telegram/ui/ChatActivity$59$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$59$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChatActivity$59$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$59$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ChatActivity$59$1;

    .prologue
    .line 3971
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$59$1$1;->this$2:Lorg/telegram/ui/ChatActivity$59$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3974
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$59$1$1;->this$2:Lorg/telegram/ui/ChatActivity$59$1;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$59$1;->this$1:Lorg/telegram/ui/ChatActivity$59;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3975
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$59$1$1;->this$2:Lorg/telegram/ui/ChatActivity$59$1;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$59$1;->this$1:Lorg/telegram/ui/ChatActivity$59;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$59;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3977
    :cond_0
    return-void
.end method
