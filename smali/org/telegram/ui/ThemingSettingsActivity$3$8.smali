.class Lorg/telegram/ui/ThemingSettingsActivity$3$8;
.super Ljava/lang/Object;
.source "ThemingSettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;


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


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingSettingsActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemingSettingsActivity$3;

    .prologue
    .line 296
    iput-object p1, p0, Lorg/telegram/ui/ThemingSettingsActivity$3$8;->this$1:Lorg/telegram/ui/ThemingSettingsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 299
    sput p1, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/ThemingSettingsActivity$3$8;->this$1:Lorg/telegram/ui/ThemingSettingsActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ThemingSettingsActivity$3;->this$0:Lorg/telegram/ui/ThemingSettingsActivity;

    const-string/jumbo v1, "prefBGColor"

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ThemingSettingsActivity;->access$300(Lorg/telegram/ui/ThemingSettingsActivity;Ljava/lang/String;I)V

    .line 301
    return-void
.end method
