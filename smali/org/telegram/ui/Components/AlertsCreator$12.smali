.class final Lorg/telegram/ui/Components/AlertsCreator$12;
.super Ljava/lang/Object;
.source "AlertsCreator.java"

# interfaces
.implements Lorg/telegram/ui/Components/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createTTLAlert(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/16 v1, 0x10

    .line 817
    if-nez p1, :cond_0

    .line 818
    const-string/jumbo v0, "ShortMessageLifetimeForever"

    const v1, 0x7f0705cd

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 832
    :goto_0
    return-object v0

    .line 819
    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    .line 820
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 821
    :cond_1
    if-ne p1, v1, :cond_2

    .line 822
    const/16 v0, 0x1e

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 823
    :cond_2
    const/16 v0, 0x11

    if-ne p1, v0, :cond_3

    .line 824
    const/16 v0, 0x3c

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 825
    :cond_3
    const/16 v0, 0x12

    if-ne p1, v0, :cond_4

    .line 826
    const/16 v0, 0xe10

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 827
    :cond_4
    const/16 v0, 0x13

    if-ne p1, v0, :cond_5

    .line 828
    const v0, 0x15180

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 829
    :cond_5
    const/16 v0, 0x14

    if-ne p1, v0, :cond_6

    .line 830
    const v0, 0x93a80

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 832
    :cond_6
    const-string/jumbo v0, ""

    goto :goto_0
.end method
