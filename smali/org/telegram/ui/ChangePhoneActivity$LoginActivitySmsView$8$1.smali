.class Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;
.super Ljava/lang/Object;
.source "ChangePhoneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    .prologue
    .line 1306
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iput-object p2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1309
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChangePhoneActivity;->needHideProgress()V

    .line 1310
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    invoke-static {v2, v6}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2002(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Z)Z

    .line 1311
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v2, :cond_1

    .line 1312
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 1313
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3700(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V

    .line 1314
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3000(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V

    .line 1315
    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1316
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1318
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v5, v5}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1320
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, v6}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 1321
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChangePhoneActivity;->finishFragment()V

    .line 1322
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1340
    .end local v0    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v1    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_0
    :goto_0
    return-void

    .line 1324
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2502(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Ljava/lang/String;)Ljava/lang/String;

    .line 1325
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-ne v2, v7, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-eq v2, v8, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-eq v2, v4, :cond_3

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-eq v2, v8, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-ne v2, v7, :cond_4

    .line 1326
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$4100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V

    .line 1328
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-ne v2, v4, :cond_6

    .line 1329
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1330
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1335
    :cond_5
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    invoke-static {v2, v5}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3902(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Z)Z

    .line 1336
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-eq v2, v7, :cond_0

    .line 1337
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    iget-object v4, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v4, v4, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->val$req:Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1331
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-ne v2, v7, :cond_5

    .line 1332
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1333
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    goto :goto_1
.end method
