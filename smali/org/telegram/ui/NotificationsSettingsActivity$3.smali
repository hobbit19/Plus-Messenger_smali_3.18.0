.class Lorg/telegram/ui/NotificationsSettingsActivity$3;
.super Ljava/lang/Object;
.source "NotificationsSettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NotificationsSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/NotificationsSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/NotificationsSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 211
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 26
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 214
    const/16 v21, 0x0

    .line 215
    .local v21, "enabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_8

    .line 216
    :cond_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 217
    .local v23, "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 218
    .local v20, "editor":Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    .line 219
    const-string/jumbo v2, "EnableAll"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 220
    const-string/jumbo v3, "EnableAll"

    if-nez v21, :cond_4

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 225
    :cond_1
    :goto_1
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_7

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v3, v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->updateServerNotificationsSettings(Z)V

    .line 474
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_2
    :goto_3
    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_3

    .line 475
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v21, :cond_49

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 477
    :cond_3
    return-void

    .line 220
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 221
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 222
    const-string/jumbo v2, "EnableGroup"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 223
    const-string/jumbo v3, "EnableGroup"

    if-nez v21, :cond_6

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_5

    .line 226
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 227
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_f

    .line 228
    :cond_9
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 229
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 230
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_c

    .line 231
    const-string/jumbo v2, "EnablePreviewAll"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 232
    const-string/jumbo v3, "EnablePreviewAll"

    if-nez v21, :cond_b

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 237
    :cond_a
    :goto_7
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_e

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v3, v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->updateServerNotificationsSettings(Z)V

    goto/16 :goto_3

    .line 232
    :cond_b
    const/4 v2, 0x0

    goto :goto_6

    .line 233
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_a

    .line 234
    const-string/jumbo v2, "EnablePreviewGroup"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 235
    const-string/jumbo v3, "EnablePreviewGroup"

    if-nez v21, :cond_d

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_7

    :cond_d
    const/4 v2, 0x0

    goto :goto_9

    .line 238
    :cond_e
    const/4 v2, 0x0

    goto :goto_8

    .line 239
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1b

    .line 241
    :cond_10
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 242
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    new-instance v25, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.RINGTONE_PICKER"

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v25, "tmpIntent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.ringtone.TYPE"

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_13

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    const-string/jumbo v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    const-string/jumbo v3, "android.intent.extra.ringtone.DEFAULT_URI"

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_14

    const/4 v2, 0x1

    :goto_b
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 246
    const/16 v16, 0x0

    .line 248
    .local v16, "currentSound":Landroid/net/Uri;
    const/16 v17, 0x0

    .line 249
    .local v17, "defaultPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_15

    sget-object v18, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 250
    .local v18, "defaultUri":Landroid/net/Uri;
    :goto_c
    if-eqz v18, :cond_11

    .line 251
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    .line 254
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_17

    .line 255
    const-string/jumbo v2, "GlobalSoundPath"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 256
    .local v22, "path":Ljava/lang/String;
    if-eqz v22, :cond_12

    const-string/jumbo v2, "NoSound"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 257
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 258
    move-object/from16 v16, v18

    .line 282
    .end local v22    # "path":Ljava/lang/String;
    :cond_12
    :goto_d
    const-string/jumbo v2, "android.intent.extra.ringtone.EXISTING_URI"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 284
    .end local v16    # "currentSound":Landroid/net/Uri;
    .end local v17    # "defaultPath":Ljava/lang/String;
    .end local v18    # "defaultUri":Landroid/net/Uri;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    .end local v25    # "tmpIntent":Landroid/content/Intent;
    :catch_0
    move-exception v19

    .line 285
    .local v19, "e":Ljava/lang/Exception;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 243
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    .restart local v25    # "tmpIntent":Landroid/content/Intent;
    :cond_13
    const/4 v2, 0x2

    goto/16 :goto_a

    .line 245
    :cond_14
    const/4 v2, 0x2

    goto :goto_b

    .line 249
    .restart local v16    # "currentSound":Landroid/net/Uri;
    .restart local v17    # "defaultPath":Ljava/lang/String;
    :cond_15
    :try_start_1
    sget-object v18, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_c

    .line 260
    .restart local v18    # "defaultUri":Landroid/net/Uri;
    .restart local v22    # "path":Ljava/lang/String;
    :cond_16
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    goto :goto_d

    .line 263
    .end local v22    # "path":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_19

    .line 264
    const-string/jumbo v2, "GroupSoundPath"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 265
    .restart local v22    # "path":Ljava/lang/String;
    if-eqz v22, :cond_12

    const-string/jumbo v2, "NoSound"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 266
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 267
    move-object/from16 v16, v18

    goto :goto_d

    .line 269
    :cond_18
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    goto :goto_d

    .line 272
    .end local v22    # "path":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_12

    .line 273
    const-string/jumbo v2, "CallsRingtonfePath"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 274
    .restart local v22    # "path":Ljava/lang/String;
    if-eqz v22, :cond_12

    const-string/jumbo v2, "NoSound"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 275
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 276
    move-object/from16 v16, v18

    goto/16 :goto_d

    .line 278
    :cond_1a
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    goto/16 :goto_d

    .line 287
    .end local v16    # "currentSound":Landroid/net/Uri;
    .end local v17    # "defaultPath":Ljava/lang/String;
    .end local v18    # "defaultUri":Landroid/net/Uri;
    .end local v22    # "path":Ljava/lang/String;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    .end local v25    # "tmpIntent":Landroid/content/Intent;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1c

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsSettingsActivity;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$802(Lorg/telegram/ui/NotificationsSettingsActivity;Z)Z

    .line 292
    new-instance v24, Lorg/telegram/tgnet/TLRPC$TL_account_resetNotifySettings;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/tgnet/TLRPC$TL_account_resetNotifySettings;-><init>()V

    .line 293
    .local v24, "req":Lorg/telegram/tgnet/TLRPC$TL_account_resetNotifySettings;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/NotificationsSettingsActivity$3$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/NotificationsSettingsActivity$3$1;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity$3;)V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_3

    .line 314
    .end local v24    # "req":Lorg/telegram/tgnet/TLRPC$TL_account_resetNotifySettings;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1e

    .line 315
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 316
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 317
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "EnableInAppSounds"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 318
    const-string/jumbo v3, "EnableInAppSounds"

    if-nez v21, :cond_1d

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 319
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 318
    :cond_1d
    const/4 v2, 0x0

    goto :goto_e

    .line 320
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_20

    .line 321
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 322
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 323
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "EnableInAppVibrate"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 324
    const-string/jumbo v3, "EnableInAppVibrate"

    if-nez v21, :cond_1f

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 325
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 324
    :cond_1f
    const/4 v2, 0x0

    goto :goto_f

    .line 326
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_22

    .line 327
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 328
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 329
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "EnableInAppPreview"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 330
    const-string/jumbo v3, "EnableInAppPreview"

    if-nez v21, :cond_21

    const/4 v2, 0x1

    :goto_10
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 331
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 330
    :cond_21
    const/4 v2, 0x0

    goto :goto_10

    .line 332
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_25

    .line 333
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 334
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 335
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "EnableInChatSound"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 336
    const-string/jumbo v3, "EnableInChatSound"

    if-nez v21, :cond_23

    const/4 v2, 0x1

    :goto_11
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 337
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 338
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v3

    if-nez v21, :cond_24

    const/4 v2, 0x1

    :goto_12
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/NotificationsController;->setInChatSoundEnabled(Z)V

    goto/16 :goto_3

    .line 336
    :cond_23
    const/4 v2, 0x0

    goto :goto_11

    .line 338
    :cond_24
    const/4 v2, 0x0

    goto :goto_12

    .line 339
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_27

    .line 340
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 341
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 342
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "EnableInAppPriority"

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 343
    const-string/jumbo v3, "EnableInAppPriority"

    if-nez v21, :cond_26

    const/4 v2, 0x1

    :goto_13
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 344
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 343
    :cond_26
    const/4 v2, 0x0

    goto :goto_13

    .line 345
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_2a

    .line 346
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 347
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 348
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "EnableContactJoined"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 349
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    if-nez v21, :cond_28

    const/4 v2, 0x1

    :goto_14
    iput-boolean v2, v3, Lorg/telegram/messenger/MessagesController;->enableJoined:Z

    .line 350
    const-string/jumbo v3, "EnableContactJoined"

    if-nez v21, :cond_29

    const/4 v2, 0x1

    :goto_15
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 351
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 349
    :cond_28
    const/4 v2, 0x0

    goto :goto_14

    .line 350
    :cond_29
    const/4 v2, 0x0

    goto :goto_15

    .line 352
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_2c

    .line 353
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 354
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 355
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "PinnedMessages"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 356
    const-string/jumbo v3, "PinnedMessages"

    if-nez v21, :cond_2b

    const/4 v2, 0x1

    :goto_16
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 357
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 356
    :cond_2b
    const/4 v2, 0x0

    goto :goto_16

    .line 358
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_2e

    .line 359
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 360
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 361
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "EnableAutoNotifications"

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 362
    const-string/jumbo v3, "EnableAutoNotifications"

    if-nez v21, :cond_2d

    const/4 v2, 0x1

    :goto_17
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 363
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 362
    :cond_2d
    const/4 v2, 0x0

    goto :goto_17

    .line 364
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_31

    .line 365
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 366
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 367
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "badgeNumber"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 368
    const-string/jumbo v3, "badgeNumber"

    if-nez v21, :cond_2f

    const/4 v2, 0x1

    :goto_18
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 369
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 370
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v3

    if-nez v21, :cond_30

    const/4 v2, 0x1

    :goto_19
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/NotificationsController;->setBadgeEnabled(Z)V

    goto/16 :goto_3

    .line 368
    :cond_2f
    const/4 v2, 0x0

    goto :goto_18

    .line 370
    :cond_30
    const/4 v2, 0x0

    goto :goto_19

    .line 371
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_34

    .line 372
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 373
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "pushConnection"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 374
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 375
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "pushConnection"

    if-nez v21, :cond_32

    const/4 v2, 0x1

    :goto_1a
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 376
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 377
    if-nez v21, :cond_33

    .line 378
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->setPushConnectionEnabled(Z)V

    goto/16 :goto_3

    .line 375
    :cond_32
    const/4 v2, 0x0

    goto :goto_1a

    .line 380
    :cond_33
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->setPushConnectionEnabled(Z)V

    goto/16 :goto_3

    .line 382
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_37

    .line 383
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notifications"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 384
    .restart local v23    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "pushService"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 385
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 386
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "pushService"

    if-nez v21, :cond_35

    const/4 v2, 0x1

    :goto_1b
    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 387
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 388
    if-nez v21, :cond_36

    .line 389
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->startPushService()V

    goto/16 :goto_3

    .line 386
    :cond_35
    const/4 v2, 0x0

    goto :goto_1b

    .line 391
    :cond_36
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->stopPushService()V

    goto/16 :goto_3

    .line 393
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "preferences":Landroid/content/SharedPreferences;
    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_3b

    .line 394
    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v7}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v7

    move/from16 v0, p2

    if-ne v0, v7, :cond_39

    const/4 v6, 0x1

    :goto_1c
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v7}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v7

    move/from16 v0, p2

    if-ne v0, v7, :cond_3a

    const/4 v7, 0x1

    :goto_1d
    new-instance v8, Lorg/telegram/ui/NotificationsSettingsActivity$3$2;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/NotificationsSettingsActivity$3$2;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity$3;I)V

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Components/AlertsCreator;->createColorSelectDialog(Landroid/app/Activity;JZZLjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    :cond_39
    const/4 v6, 0x0

    goto :goto_1c

    :cond_3a
    const/4 v7, 0x0

    goto :goto_1d

    .line 403
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_3f

    .line 404
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 407
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_3d

    const/4 v2, 0x1

    :goto_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_3e

    const/4 v3, 0x1

    :goto_1f
    new-instance v8, Lorg/telegram/ui/NotificationsSettingsActivity$3$3;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/NotificationsSettingsActivity$3$3;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity$3;I)V

    invoke-static {v5, v7, v2, v3, v8}, Lorg/telegram/ui/Components/AlertsCreator;->createPopupSelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;ZZLjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    :cond_3d
    const/4 v2, 0x0

    goto :goto_1e

    :cond_3e
    const/4 v3, 0x0

    goto :goto_1f

    .line 413
    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_44

    .line 414
    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 417
    const/4 v6, 0x0

    .line 418
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_42

    .line 419
    const-string/jumbo v6, "vibrate_messages"

    .line 425
    :cond_41
    :goto_20
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    const-wide/16 v4, 0x0

    new-instance v7, Lorg/telegram/ui/NotificationsSettingsActivity$3$4;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/NotificationsSettingsActivity$3$4;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity$3;I)V

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/AlertsCreator;->createVibrationSelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JLjava/lang/String;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    .line 420
    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_43

    .line 421
    const-string/jumbo v6, "vibrate_group"

    goto :goto_20

    .line 422
    :cond_43
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_41

    .line 423
    const-string/jumbo v6, "vibrate_calls"

    goto :goto_20

    .line 431
    .end local v6    # "key":Ljava/lang/String;
    :cond_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_45

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_48

    .line 432
    :cond_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_46

    const/4 v12, 0x1

    :goto_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_47

    const/4 v13, 0x1

    :goto_22
    new-instance v14, Lorg/telegram/ui/NotificationsSettingsActivity$3$5;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v14, v0, v1}, Lorg/telegram/ui/NotificationsSettingsActivity$3$5;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity$3;I)V

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/AlertsCreator;->createPrioritySelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JZZLjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    :cond_46
    const/4 v12, 0x0

    goto :goto_21

    :cond_47
    const/4 v13, 0x0

    goto :goto_22

    .line 438
    :cond_48
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 439
    new-instance v15, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v15, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 440
    .local v15, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v2, "RepeatNotifications"

    const v3, 0x7f070513

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 441
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string/jumbo v4, "RepeatDisabled"

    const v5, 0x7f070512

    .line 442
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Minutes"

    const/4 v5, 0x5

    .line 443
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Minutes"

    const/16 v5, 0xa

    .line 444
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "Minutes"

    const/16 v5, 0x1e

    .line 445
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Hours"

    const/4 v5, 0x1

    .line 446
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Hours"

    const/4 v5, 0x2

    .line 447
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "Hours"

    const/4 v5, 0x4

    .line 448
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Lorg/telegram/ui/NotificationsSettingsActivity$3$6;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/NotificationsSettingsActivity$3$6;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity$3;I)V

    .line 441
    invoke-virtual {v15, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 471
    const-string/jumbo v2, "Cancel"

    const v3, 0x7f0700f0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$3;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    .line 475
    .end local v15    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local p1    # "view":Landroid/view/View;
    :cond_49
    const/4 v2, 0x0

    goto/16 :goto_4
.end method
