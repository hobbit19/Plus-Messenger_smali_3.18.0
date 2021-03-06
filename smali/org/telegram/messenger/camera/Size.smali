.class public final Lorg/telegram/messenger/camera/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    .line 15
    iput p2, p0, Lorg/telegram/messenger/camera/Size;->mHeight:I

    .line 16
    return-void
.end method

.method private static invalidSize(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid Size: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseSize(Ljava/lang/String;)Lorg/telegram/messenger/camera/Size;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 51
    const/16 v2, 0x2a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 52
    .local v1, "sep_ix":I
    if-gez v1, :cond_0

    .line 53
    const/16 v2, 0x78

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 55
    :cond_0
    if-gez v1, :cond_1

    .line 56
    invoke-static {p0}, Lorg/telegram/messenger/camera/Size;->invalidSize(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    .line 59
    :cond_1
    :try_start_0
    new-instance v2, Lorg/telegram/messenger/camera/Size;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/telegram/messenger/camera/Size;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {p0}, Lorg/telegram/messenger/camera/Size;->invalidSize(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    if-nez p1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v2

    .line 31
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 32
    goto :goto_0

    .line 34
    :cond_2
    instance-of v3, p1, Lorg/telegram/messenger/camera/Size;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 35
    check-cast v0, Lorg/telegram/messenger/camera/Size;

    .line 36
    .local v0, "other":Lorg/telegram/messenger/camera/Size;
    iget v3, p0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    iget v4, v0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget v4, v0, Lorg/telegram/messenger/camera/Size;->mHeight:I

    if-ne v3, v4, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lorg/telegram/messenger/camera/Size;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 67
    iget v0, p0, Lorg/telegram/messenger/camera/Size;->mHeight:I

    iget v1, p0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/telegram/messenger/camera/Size;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/camera/Size;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
