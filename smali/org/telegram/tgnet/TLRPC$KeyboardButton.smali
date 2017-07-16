.class public Lorg/telegram/tgnet/TLRPC$KeyboardButton;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyboardButton"
.end annotation


# instance fields
.field public data:[B

.field public flags:I

.field public query:Ljava/lang/String;

.field public same_peer:Z

.field public text:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    const/4 v0, 0x0

    .local v0, "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    sparse-switch p1, :sswitch_data_0

    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in KeyboardButton"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPhone;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPhone;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    goto :goto_0

    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    goto :goto_0

    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    goto :goto_0

    :sswitch_3

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    goto :goto_0

    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestGeoLocation;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestGeoLocation;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    goto :goto_0

    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    goto :goto_0

    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    goto :goto_0

    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButton;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButton;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5d05b780 -> :sswitch_7
        -0x5026c045 -> :sswitch_5
        -0x4e9593d7 -> :sswitch_0
        -0x38694c1 -> :sswitch_4
        0x568a748 -> :sswitch_3
        0x258aff05 -> :sswitch_2
        0x50f41ccf -> :sswitch_1
        0x683a5e46 -> :sswitch_6
    .end sparse-switch
.end method
