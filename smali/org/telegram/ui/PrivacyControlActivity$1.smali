.class Lorg/telegram/ui/PrivacyControlActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "PrivacyControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacyControlActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PrivacyControlActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacyControlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 132
    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 135
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 136
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/PrivacyControlActivity;->finishFragment()V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    if-ne p1, v6, :cond_0

    .line 138
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/PrivacyControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v3

    if-nez v3, :cond_3

    .line 143
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mainconfig"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 144
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "privacyAlertShowed"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 145
    .local v2, "showed":Z
    if-nez v2, :cond_3

    .line 146
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/PrivacyControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 148
    const-string/jumbo v3, "WhoCanAddMeInfo"

    const v4, 0x7f0706a6

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 152
    :goto_1
    const-string/jumbo v3, "AppName"

    const v4, 0x7f070078

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 153
    const-string/jumbo v3, "OK"

    const v4, 0x7f070452

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/PrivacyControlActivity$1$1;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/PrivacyControlActivity$1$1;-><init>(Lorg/telegram/ui/PrivacyControlActivity$1;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 160
    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0700f0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 161
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/PrivacyControlActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 150
    :cond_2
    const-string/jumbo v3, "CustomHelp"

    const v4, 0x7f0701bf

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 165
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    .end local v2    # "showed":Z
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$200(Lorg/telegram/ui/PrivacyControlActivity;)V

    goto/16 :goto_0
.end method
