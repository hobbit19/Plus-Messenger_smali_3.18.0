.class Lorg/telegram/ui/VoIPActivity$22;
.super Ljava/lang/Object;
.source "VoIPActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity;->onStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPActivity;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 1062
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    iput p2, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x3

    const/16 v8, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1065
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3100(Lorg/telegram/ui/VoIPActivity;)Z

    move-result v2

    .line 1066
    .local v2, "wasFirstStateChange":Z
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3100(Lorg/telegram/ui/VoIPActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1067
    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    if-ne v3, v10, :cond_4

    move v3, v4

    :goto_0
    invoke-static {v6, v3}, Lorg/telegram/ui/VoIPActivity;->access$3202(Lorg/telegram/ui/VoIPActivity;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1068
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$2700(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1069
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$200(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1070
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$700(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CheckableImageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setVisibility(I)V

    .line 1071
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$600(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CheckableImageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setVisibility(I)V

    .line 1072
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$2800(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1073
    new-instance v3, Lorg/telegram/ui/VoIPActivity$22$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/VoIPActivity$22$1;-><init>(Lorg/telegram/ui/VoIPActivity$22;)V

    const-wide/16 v6, 0x1f4

    invoke-static {v3, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1080
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/VoIPActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v6, 0x200000

    invoke-virtual {v3, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1087
    :goto_1
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    if-eq v3, v9, :cond_0

    .line 1088
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3300(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1089
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3, v5}, Lorg/telegram/ui/VoIPActivity;->access$3102(Lorg/telegram/ui/VoIPActivity;Z)Z

    .line 1092
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3200(Lorg/telegram/ui/VoIPActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    if-eq v3, v10, :cond_2

    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    const/4 v6, 0x6

    if-eq v3, v6, :cond_2

    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    const/4 v6, 0x5

    if-eq v3, v6, :cond_2

    .line 1093
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3, v5}, Lorg/telegram/ui/VoIPActivity;->access$3202(Lorg/telegram/ui/VoIPActivity;Z)Z

    .line 1094
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$1000(Lorg/telegram/ui/VoIPActivity;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1095
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$1100(Lorg/telegram/ui/VoIPActivity;)V

    .line 1098
    :cond_2
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    if-ne v3, v10, :cond_6

    .line 1099
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string/jumbo v4, "VoipIncoming"

    const v6, 0x7f070686

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V

    .line 1100
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/VoIPActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x200000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1179
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v3, v5

    .line 1067
    goto/16 :goto_0

    .line 1082
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$2700(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1083
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$1500(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$1300(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1085
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/VoIPActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v6, 0x200000

    invoke-virtual {v3, v6}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_1

    .line 1101
    :cond_6
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    if-eq v3, v4, :cond_7

    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_8

    .line 1102
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string/jumbo v5, "VoipConnecting"

    const v6, 0x7f07067d

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V

    goto :goto_2

    .line 1103
    :cond_8
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    const/4 v6, 0x7

    if-ne v3, v6, :cond_9

    .line 1104
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string/jumbo v5, "VoipExchangingKeys"

    const v6, 0x7f070680

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V

    goto :goto_2

    .line 1105
    :cond_9
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    if-ne v3, v8, :cond_a

    .line 1106
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string/jumbo v5, "VoipWaiting"

    const v6, 0x7f070699

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V

    goto :goto_2

    .line 1107
    :cond_a
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    const/16 v6, 0xb

    if-ne v3, v6, :cond_b

    .line 1108
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string/jumbo v5, "VoipRinging"

    const v6, 0x7f070695

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 1109
    :cond_b
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    const/16 v6, 0x9

    if-ne v3, v6, :cond_c

    .line 1110
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string/jumbo v5, "VoipRequesting"

    const v6, 0x7f070694

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 1111
    :cond_c
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    const/4 v6, 0x5

    if-ne v3, v6, :cond_d

    .line 1112
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string/jumbo v5, "VoipHangingUp"

    const v6, 0x7f070684

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 1113
    :cond_d
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    const/4 v6, 0x6

    if-ne v3, v6, :cond_e

    .line 1114
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string/jumbo v4, "VoipCallEnded"

    const v6, 0x7f07067c

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V

    .line 1115
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3500(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/VoIPActivity$22$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VoIPActivity$22$2;-><init>(Lorg/telegram/ui/VoIPActivity$22;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 1121
    :cond_e
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    const/16 v6, 0xc

    if-ne v3, v6, :cond_f

    .line 1123
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string/jumbo v4, "VoipBusy"

    const v6, 0x7f07067b

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V

    .line 1130
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3600(Lorg/telegram/ui/VoIPActivity;)V

    goto/16 :goto_2

    .line 1131
    :cond_f
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    if-ne v3, v9, :cond_11

    .line 1132
    if-nez v2, :cond_10

    .line 1133
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string/jumbo v6, "mainconfig"

    invoke-virtual {v3, v6, v5}, Lorg/telegram/ui/VoIPActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v6, "call_emoji_tooltip_count"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1134
    .local v0, "count":I
    if-ge v0, v9, :cond_10

    .line 1135
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3, v4}, Lorg/telegram/ui/VoIPActivity;->access$1600(Lorg/telegram/ui/VoIPActivity;Z)V

    .line 1136
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$1800(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    new-instance v6, Lorg/telegram/ui/VoIPActivity$22$3;

    invoke-direct {v6, p0}, Lorg/telegram/ui/VoIPActivity$22$3;-><init>(Lorg/telegram/ui/VoIPActivity$22;)V

    invoke-static {v4, v6}, Lorg/telegram/ui/VoIPActivity;->access$1702(Lorg/telegram/ui/VoIPActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1143
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string/jumbo v4, "mainconfig"

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/VoIPActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "call_emoji_tooltip_count"

    add-int/lit8 v6, v0, 0x1

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1146
    .end local v0    # "count":I
    :cond_10
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string/jumbo v4, "0:00"

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V

    .line 1147
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3700(Lorg/telegram/ui/VoIPActivity;)V

    .line 1148
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3800(Lorg/telegram/ui/VoIPActivity;)V

    .line 1149
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3300(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1150
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3300(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1151
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3300(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1152
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3300(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_2

    .line 1154
    :cond_11
    iget v3, p0, Lorg/telegram/ui/VoIPActivity$22;->val$state:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_3

    .line 1155
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string/jumbo v6, "VoipFailed"

    const v7, 0x7f070681

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v5}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V

    .line 1156
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->getLastError()I

    move-result v1

    .line 1157
    .local v1, "lastError":I
    :goto_3
    if-ne v1, v4, :cond_13

    .line 1158
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string/jumbo v6, "VoipPeerIncompatible"

    const v7, 0x7f070691

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    .line 1159
    invoke-static {v8}, Lorg/telegram/ui/VoIPActivity;->access$400(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v9, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v9}, Lorg/telegram/ui/VoIPActivity;->access$400(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v8, v9}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 1158
    invoke-static {v6, v7, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/VoIPActivity;->access$3900(Lorg/telegram/ui/VoIPActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .end local v1    # "lastError":I
    :cond_12
    move v1, v5

    .line 1156
    goto :goto_3

    .line 1160
    .restart local v1    # "lastError":I
    :cond_13
    const/4 v3, -0x1

    if-ne v1, v3, :cond_14

    .line 1161
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string/jumbo v6, "VoipPeerOutdated"

    const v7, 0x7f070692

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    .line 1162
    invoke-static {v8}, Lorg/telegram/ui/VoIPActivity;->access$400(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v9, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v9}, Lorg/telegram/ui/VoIPActivity;->access$400(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v8, v9}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 1161
    invoke-static {v6, v7, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/VoIPActivity;->access$3900(Lorg/telegram/ui/VoIPActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1163
    :cond_14
    const/4 v3, -0x2

    if-ne v1, v3, :cond_15

    .line 1164
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string/jumbo v6, "CallNotAvailable"

    const v7, 0x7f0700e9

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    .line 1165
    invoke-static {v8}, Lorg/telegram/ui/VoIPActivity;->access$400(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v9, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v9}, Lorg/telegram/ui/VoIPActivity;->access$400(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v8, v9}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 1164
    invoke-static {v6, v7, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/VoIPActivity;->access$3900(Lorg/telegram/ui/VoIPActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1166
    :cond_15
    if-ne v1, v9, :cond_16

    .line 1167
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    const-string/jumbo v4, "Error initializing audio hardware"

    invoke-static {v3, v4}, Lorg/telegram/ui/VoIPActivity;->access$3900(Lorg/telegram/ui/VoIPActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1168
    :cond_16
    const/4 v3, -0x3

    if-ne v1, v3, :cond_17

    .line 1169
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/VoIPActivity;->finish()V

    goto/16 :goto_2

    .line 1171
    :cond_17
    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity$22;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v3}, Lorg/telegram/ui/VoIPActivity;->access$3500(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/VoIPActivity$22$4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VoIPActivity$22$4;-><init>(Lorg/telegram/ui/VoIPActivity$22;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2
.end method
