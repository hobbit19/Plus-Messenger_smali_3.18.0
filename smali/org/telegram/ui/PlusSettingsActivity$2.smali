.class Lorg/telegram/ui/PlusSettingsActivity$2;
.super Ljava/lang/Object;
.source "PlusSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PlusSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 339
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$2;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 342
    iget-object v4, p0, Lorg/telegram/ui/PlusSettingsActivity$2;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    iget-object v2, p0, Lorg/telegram/ui/PlusSettingsActivity$2;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PlusSettingsActivity;->access$000(Lorg/telegram/ui/PlusSettingsActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v2}, Lorg/telegram/ui/PlusSettingsActivity;->access$002(Lorg/telegram/ui/PlusSettingsActivity;Z)Z

    .line 343
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "plusconfig"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 344
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 345
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "plusShowPrefix"

    iget-object v3, p0, Lorg/telegram/ui/PlusSettingsActivity$2;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PlusSettingsActivity;->access$000(Lorg/telegram/ui/PlusSettingsActivity;)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 346
    iget-object v2, p0, Lorg/telegram/ui/PlusSettingsActivity$2;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PlusSettingsActivity;->access$100(Lorg/telegram/ui/PlusSettingsActivity;)Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 347
    iget-object v2, p0, Lorg/telegram/ui/PlusSettingsActivity$2;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PlusSettingsActivity;->access$100(Lorg/telegram/ui/PlusSettingsActivity;)Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 349
    :cond_0
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    move v2, v3

    .line 342
    goto :goto_0
.end method
