.class Lorg/telegram/ui/PaymentFormActivity$5;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private actionPosition:I

.field private characterAction:I

.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 714
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$5;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 741
    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity$5;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v8}, Lorg/telegram/ui/PaymentFormActivity;->access$1800(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 786
    :goto_0
    return-void

    .line 744
    :cond_0
    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity$5;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v8}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v8

    const/16 v9, 0x9

    aget-object v5, v8, v9

    check-cast v5, Lorg/telegram/ui/Components/HintEditText;

    .line 745
    .local v5, "phoneField":Lorg/telegram/ui/Components/HintEditText;
    invoke-virtual {v5}, Lorg/telegram/ui/Components/HintEditText;->getSelectionStart()I

    move-result v6

    .line 746
    .local v6, "start":I
    const-string/jumbo v4, "0123456789"

    .line 747
    .local v4, "phoneChars":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 748
    .local v7, "str":Ljava/lang/String;
    iget v8, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 749
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    iget v10, p0, Lorg/telegram/ui/PaymentFormActivity$5;->actionPosition:I

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/telegram/ui/PaymentFormActivity$5;->actionPosition:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 750
    add-int/lit8 v6, v6, -0x1

    .line 752
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 753
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 754
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 755
    .local v2, "ch":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 756
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 759
    .end local v2    # "ch":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity$5;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lorg/telegram/ui/PaymentFormActivity;->access$1802(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    .line 760
    invoke-virtual {v5}, Lorg/telegram/ui/Components/HintEditText;->getHintText()Ljava/lang/String;

    move-result-object v3

    .line 761
    .local v3, "hint":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 762
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ge v0, v8, :cond_6

    .line 763
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_5

    .line 764
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-ne v8, v9, :cond_4

    .line 765
    const/16 v8, 0x20

    invoke-virtual {v1, v0, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 766
    add-int/lit8 v0, v0, 0x1

    .line 767
    if-ne v6, v0, :cond_4

    iget v8, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    iget v8, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    .line 768
    add-int/lit8 v6, v6, 0x1

    .line 762
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 772
    :cond_5
    const/16 v8, 0x20

    invoke-virtual {v1, v0, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 773
    add-int/lit8 v8, v0, 0x1

    if-ne v6, v8, :cond_6

    iget v8, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_6

    iget v8, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_6

    .line 774
    add-int/lit8 v6, v6, 0x1

    .line 780
    :cond_6
    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/HintEditText;->setText(Ljava/lang/CharSequence;)V

    .line 781
    if-ltz v6, :cond_7

    .line 782
    invoke-virtual {v5}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v8

    if-gt v6, v8, :cond_8

    .end local v6    # "start":I
    :goto_3
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V

    .line 784
    :cond_7
    invoke-virtual {v5}, Lorg/telegram/ui/Components/HintEditText;->onTextChange()V

    .line 785
    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity$5;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/telegram/ui/PaymentFormActivity;->access$1802(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    goto/16 :goto_0

    .line 782
    .restart local v6    # "start":I
    :cond_8
    invoke-virtual {v5}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v6

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

    .line 720
    if-nez p3, :cond_0

    if-ne p4, v0, :cond_0

    .line 721
    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    .line 732
    :goto_0
    return-void

    .line 722
    :cond_0
    if-ne p3, v0, :cond_2

    if-nez p4, :cond_2

    .line 723
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    if-lez p2, :cond_1

    .line 724
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    .line 725
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$5;->actionPosition:I

    goto :goto_0

    .line 727
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    goto :goto_0

    .line 730
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$5;->characterAction:I

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 737
    return-void
.end method
