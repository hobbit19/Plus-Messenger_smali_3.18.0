.class Lorg/telegram/ui/LoginActivity$PhoneView$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$PhoneView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private actionPosition:I

.field private characterAction:I

.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

.field final synthetic val$this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V
    .locals 1
    .param p1, "this$1"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 755
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->val$this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->characterAction:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 14
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/16 v11, 0x20

    const/4 v10, 0x3

    .line 783
    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v7}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$1300(Lorg/telegram/ui/LoginActivity$PhoneView;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 827
    :goto_0
    return-void

    .line 786
    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v7}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$400(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/HintEditText;->getSelectionStart()I

    move-result v5

    .line 787
    .local v5, "start":I
    const-string/jumbo v4, "0123456789"

    .line 788
    .local v4, "phoneChars":Ljava/lang/String;
    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v7}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$400(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 789
    .local v6, "str":Ljava/lang/String;
    iget v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->characterAction:I

    if-ne v7, v10, :cond_1

    .line 790
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->actionPosition:I

    invoke-virtual {v6, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->actionPosition:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 791
    add-int/lit8 v5, v5, -0x1

    .line 793
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 794
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 795
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 796
    .local v2, "ch":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 797
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 800
    .end local v2    # "ch":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$1302(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z

    .line 801
    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v7}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$400(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/HintEditText;->getHintText()Ljava/lang/String;

    move-result-object v3

    .line 802
    .local v3, "hint":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 803
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v0, v7, :cond_6

    .line 804
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 805
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_4

    .line 806
    invoke-virtual {v1, v0, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 807
    add-int/lit8 v0, v0, 0x1

    .line 808
    if-ne v5, v0, :cond_4

    iget v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->characterAction:I

    if-eq v7, v13, :cond_4

    iget v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->characterAction:I

    if-eq v7, v10, :cond_4

    .line 809
    add-int/lit8 v5, v5, 0x1

    .line 803
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 813
    :cond_5
    invoke-virtual {v1, v0, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 814
    add-int/lit8 v7, v0, 0x1

    if-ne v5, v7, :cond_6

    iget v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->characterAction:I

    if-eq v7, v13, :cond_6

    iget v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->characterAction:I

    if-eq v7, v10, :cond_6

    .line 815
    add-int/lit8 v5, v5, 0x1

    .line 821
    :cond_6
    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v7}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$400(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/HintEditText;->setText(Ljava/lang/CharSequence;)V

    .line 822
    if-ltz v5, :cond_7

    .line 823
    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v7}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$400(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v8}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$400(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v8

    if-gt v5, v8, :cond_8

    .end local v5    # "start":I
    :goto_3
    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V

    .line 825
    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v7}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$400(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/HintEditText;->onTextChange()V

    .line 826
    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v7, v12}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$1302(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z

    goto/16 :goto_0

    .line 823
    .restart local v5    # "start":I
    :cond_8
    iget-object v8, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {v8}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$400(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v5

    goto :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    const/4 v0, 0x1

    .line 762
    if-nez p3, :cond_0

    if-ne p4, v0, :cond_0

    .line 763
    iput v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->characterAction:I

    .line 774
    :goto_0
    return-void

    .line 764
    :cond_0
    if-ne p3, v0, :cond_2

    if-nez p4, :cond_2

    .line 765
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    if-lez p2, :cond_1

    .line 766
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->characterAction:I

    .line 767
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->actionPosition:I

    goto :goto_0

    .line 769
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->characterAction:I

    goto :goto_0

    .line 772
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->characterAction:I

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 779
    return-void
.end method
