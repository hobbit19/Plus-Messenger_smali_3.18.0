.class Lorg/telegram/ui/ThemingSettingsActivity$3$6;
.super Ljava/lang/Object;
.source "ThemingSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingSettingsActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemingSettingsActivity$3;

.field final synthetic val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingSettingsActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemingSettingsActivity$3;

    .prologue
    .line 257
    iput-object p1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3$6;->this$1:Lorg/telegram/ui/ThemingSettingsActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/ThemingSettingsActivity$3$6;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$3$6;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefAvatarRadius:I

    if-eq v0, v1, :cond_0

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$3$6;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v0

    sput v0, Lorg/telegram/ui/ActionBar/Theme;->prefAvatarRadius:I

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$3$6;->this$1:Lorg/telegram/ui/ThemingSettingsActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    const-string/jumbo v1, "prefAvatarRadius"

    iget-object v2, p0, Lorg/telegram/ui/ThemingSettingsActivity$3$6;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ThemingSettingsActivity;->access$300(Lorg/telegram/ui/ThemingSettingsActivity;Ljava/lang/String;I)V

    .line 264
    :cond_0
    return-void
.end method
