.class Lorg/telegram/ui/TwoStepVerificationActivity$8;
.super Ljava/lang/Object;
.source "TwoStepVerificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TwoStepVerificationActivity;->updateRows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TwoStepVerificationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/TwoStepVerificationActivity;

    .prologue
    .line 573
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$8;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$8;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1700(Lorg/telegram/ui/TwoStepVerificationActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$8;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1700(Lorg/telegram/ui/TwoStepVerificationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 578
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$8;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1700(Lorg/telegram/ui/TwoStepVerificationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 580
    :cond_0
    return-void
.end method
