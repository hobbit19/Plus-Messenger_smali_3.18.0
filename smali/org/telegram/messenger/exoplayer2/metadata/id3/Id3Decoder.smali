.class public final Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;
.super Ljava/lang/Object;
.source "Id3Decoder.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;
    }
.end annotation


# static fields
.field public static final ID3_HEADER_LENGTH:I = 0xa

.field public static final ID3_TAG:I

.field private static final ID3_TEXT_ENCODING_ISO_8859_1:I = 0x0

.field private static final ID3_TEXT_ENCODING_UTF_16:I = 0x1

.field private static final ID3_TEXT_ENCODING_UTF_16BE:I = 0x2

.field private static final ID3_TEXT_ENCODING_UTF_8:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Id3Decoder"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "ID3"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->ID3_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    return-void
.end method

.method private static decodeApicFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;
    .locals 17
    .param p0, "id3Data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "majorVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 362
    .local v6, "encoding":I
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "charset":Ljava/lang/String;
    add-int/lit8 v12, p1, -0x1

    new-array v2, v12, [B

    .line 365
    .local v2, "data":[B
    const/4 v12, 0x0

    add-int/lit8 v13, p1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12, v13}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 369
    const/4 v12, 0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_1

    .line 370
    const/4 v8, 0x2

    .line 371
    .local v8, "mimeTypeEndIndex":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "image/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x3

    const-string/jumbo v16, "ISO-8859-1"

    move-object/from16 v0, v16

    invoke-direct {v13, v2, v14, v15, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 372
    .local v7, "mimeType":Ljava/lang/String;
    const-string/jumbo v12, "image/jpg"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 373
    const-string/jumbo v7, "image/jpeg"

    .line 383
    :cond_0
    :goto_0
    add-int/lit8 v12, v8, 0x1

    aget-byte v12, v2, v12

    and-int/lit16 v11, v12, 0xff

    .line 385
    .local v11, "pictureType":I
    add-int/lit8 v5, v8, 0x2

    .line 386
    .local v5, "descriptionStartIndex":I
    invoke-static {v2, v5, v6}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v4

    .line 387
    .local v4, "descriptionEndIndex":I
    new-instance v3, Ljava/lang/String;

    sub-int v12, v4, v5

    invoke-direct {v3, v2, v5, v12, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 390
    .local v3, "description":Ljava/lang/String;
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v12

    add-int v10, v4, v12

    .line 391
    .local v10, "pictureDataStartIndex":I
    array-length v12, v2

    invoke-static {v2, v10, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 393
    .local v9, "pictureData":[B
    new-instance v12, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;

    invoke-direct {v12, v7, v3, v11, v9}, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v12

    .line 376
    .end local v3    # "description":Ljava/lang/String;
    .end local v4    # "descriptionEndIndex":I
    .end local v5    # "descriptionStartIndex":I
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "mimeTypeEndIndex":I
    .end local v9    # "pictureData":[B
    .end local v10    # "pictureDataStartIndex":I
    .end local v11    # "pictureType":I
    :cond_1
    const/4 v12, 0x0

    invoke-static {v2, v12}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v8

    .line 377
    .restart local v8    # "mimeTypeEndIndex":I
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "ISO-8859-1"

    invoke-direct {v12, v2, v13, v8, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 378
    .restart local v7    # "mimeType":Ljava/lang/String;
    const/16 v12, 0x2f

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_0

    .line 379
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "image/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private static decodeBinaryFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/metadata/id3/BinaryFrame;
    .locals 2
    .param p0, "id3Data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 434
    new-array v0, p1, [B

    .line 435
    .local v0, "frame":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 437
    new-instance v1, Lorg/telegram/messenger/exoplayer2/metadata/id3/BinaryFrame;

    invoke-direct {v1, p2, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method private static decodeCommentFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;
    .locals 11
    .param p0, "id3Data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v10, 0x0

    .line 398
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 399
    .local v4, "encoding":I
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "charset":Ljava/lang/String;
    new-array v1, v9, [B

    .line 402
    .local v1, "data":[B
    invoke-virtual {p0, v1, v10, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 403
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1, v10, v9}, Ljava/lang/String;-><init>([BII)V

    .line 405
    .local v5, "language":Ljava/lang/String;
    add-int/lit8 v9, p1, -0x4

    new-array v1, v9, [B

    .line 406
    add-int/lit8 v9, p1, -0x4

    invoke-virtual {p0, v1, v10, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 408
    invoke-static {v1, v10, v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 409
    .local v3, "descriptionEndIndex":I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v10, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 411
    .local v2, "description":Ljava/lang/String;
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v9

    add-int v8, v3, v9

    .line 412
    .local v8, "textStartIndex":I
    invoke-static {v1, v8, v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v7

    .line 413
    .local v7, "textEndIndex":I
    new-instance v6, Ljava/lang/String;

    sub-int v9, v7, v8

    invoke-direct {v6, v1, v8, v9, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 415
    .local v6, "text":Ljava/lang/String;
    new-instance v9, Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;

    invoke-direct {v9, v5, v2, v6}, Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method private static decodeFrame(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    .locals 22
    .param p0, "majorVersion"    # I
    .param p1, "id3Data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "unsignedIntFrameSizeHack"    # Z

    .prologue
    .line 194
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 195
    .local v5, "frameId0":I
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 196
    .local v6, "frameId1":I
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 197
    .local v7, "frameId2":I
    const/16 v17, 0x3

    move/from16 v0, p0

    move/from16 v1, v17

    if-lt v0, v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 200
    .local v8, "frameId3":I
    :goto_0
    const/16 v17, 0x4

    move/from16 v0, p0

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 201
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    .line 202
    .local v9, "frameSize":I
    if-nez p2, :cond_0

    .line 203
    and-int/lit16 v0, v9, 0xff

    move/from16 v17, v0

    shr-int/lit8 v18, v9, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x7

    or-int v17, v17, v18

    shr-int/lit8 v18, v9, 0x10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0xe

    or-int v17, v17, v18

    shr-int/lit8 v18, v9, 0x18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x15

    or-int v9, v17, v18

    .line 212
    :cond_0
    :goto_1
    const/16 v17, 0x3

    move/from16 v0, p0

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 213
    .local v3, "flags":I
    :goto_2
    if-nez v5, :cond_5

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    if-nez v8, :cond_5

    if-nez v9, :cond_5

    if-nez v3, :cond_5

    .line 216
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 217
    const/4 v4, 0x0

    .line 296
    :goto_3
    return-object v4

    .line 197
    .end local v3    # "flags":I
    .end local v8    # "frameId3":I
    .end local v9    # "frameSize":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 206
    .restart local v8    # "frameId3":I
    :cond_2
    const/16 v17, 0x3

    move/from16 v0, p0

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 207
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    .restart local v9    # "frameSize":I
    goto :goto_1

    .line 209
    .end local v9    # "frameSize":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v9

    .restart local v9    # "frameSize":I
    goto :goto_1

    .line 212
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 220
    .restart local v3    # "flags":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v17

    add-int v16, v17, v9

    .line 221
    .local v16, "nextFramePosition":I
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    .line 222
    const-string/jumbo v17, "Id3Decoder"

    const-string/jumbo v18, "Frame size exceeds remaining tag data"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 224
    const/4 v4, 0x0

    goto :goto_3

    .line 228
    :cond_6
    const/4 v13, 0x0

    .line 229
    .local v13, "isCompressed":Z
    const/4 v14, 0x0

    .line 230
    .local v14, "isEncrypted":Z
    const/4 v15, 0x0

    .line 231
    .local v15, "isUnsynchronized":Z
    const/4 v10, 0x0

    .line 232
    .local v10, "hasDataLength":Z
    const/4 v11, 0x0

    .line 233
    .local v11, "hasGroupIdentifier":Z
    const/16 v17, 0x3

    move/from16 v0, p0

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 234
    and-int/lit16 v0, v3, 0x80

    move/from16 v17, v0

    if-eqz v17, :cond_9

    const/4 v13, 0x1

    .line 235
    :goto_4
    and-int/lit8 v17, v3, 0x40

    if-eqz v17, :cond_a

    const/4 v14, 0x1

    .line 236
    :goto_5
    and-int/lit8 v17, v3, 0x20

    if-eqz v17, :cond_b

    const/4 v11, 0x1

    .line 237
    :goto_6
    move v10, v13

    .line 246
    :cond_7
    :goto_7
    if-nez v13, :cond_8

    if-eqz v14, :cond_12

    .line 247
    :cond_8
    const-string/jumbo v17, "Id3Decoder"

    const-string/jumbo v18, "Skipping unsupported compressed or encrypted frame"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 249
    const/4 v4, 0x0

    goto :goto_3

    .line 234
    :cond_9
    const/4 v13, 0x0

    goto :goto_4

    .line 235
    :cond_a
    const/4 v14, 0x0

    goto :goto_5

    .line 236
    :cond_b
    const/4 v11, 0x0

    goto :goto_6

    .line 238
    :cond_c
    const/16 v17, 0x4

    move/from16 v0, p0

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 239
    and-int/lit8 v17, v3, 0x40

    if-eqz v17, :cond_d

    const/4 v11, 0x1

    .line 240
    :goto_8
    and-int/lit8 v17, v3, 0x8

    if-eqz v17, :cond_e

    const/4 v13, 0x1

    .line 241
    :goto_9
    and-int/lit8 v17, v3, 0x4

    if-eqz v17, :cond_f

    const/4 v14, 0x1

    .line 242
    :goto_a
    and-int/lit8 v17, v3, 0x2

    if-eqz v17, :cond_10

    const/4 v15, 0x1

    .line 243
    :goto_b
    and-int/lit8 v17, v3, 0x1

    if-eqz v17, :cond_11

    const/4 v10, 0x1

    :goto_c
    goto :goto_7

    .line 239
    :cond_d
    const/4 v11, 0x0

    goto :goto_8

    .line 240
    :cond_e
    const/4 v13, 0x0

    goto :goto_9

    .line 241
    :cond_f
    const/4 v14, 0x0

    goto :goto_a

    .line 242
    :cond_10
    const/4 v15, 0x0

    goto :goto_b

    .line 243
    :cond_11
    const/4 v10, 0x0

    goto :goto_c

    .line 252
    :cond_12
    if-eqz v11, :cond_13

    .line 253
    add-int/lit8 v9, v9, -0x1

    .line 254
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 256
    :cond_13
    if-eqz v10, :cond_14

    .line 257
    add-int/lit8 v9, v9, -0x4

    .line 258
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 260
    :cond_14
    if-eqz v15, :cond_15

    .line 261
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->removeUnsynchronization(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)I

    move-result v9

    .line 266
    :cond_15
    const/16 v17, 0x54

    move/from16 v0, v17

    if-ne v5, v0, :cond_17

    const/16 v17, 0x58

    move/from16 v0, v17

    if-ne v6, v0, :cond_17

    const/16 v17, 0x58

    move/from16 v0, v17

    if-ne v7, v0, :cond_17

    const/16 v17, 0x2

    move/from16 v0, p0

    move/from16 v1, v17

    if-eq v0, v1, :cond_16

    const/16 v17, 0x58

    move/from16 v0, v17

    if-ne v8, v0, :cond_17

    .line 268
    :cond_16
    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeTxxxFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 296
    .local v4, "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :goto_d
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_3

    .line 269
    .end local v4    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :cond_17
    const/16 v17, 0x50

    move/from16 v0, v17

    if-ne v5, v0, :cond_18

    const/16 v17, 0x52

    move/from16 v0, v17

    if-ne v6, v0, :cond_18

    const/16 v17, 0x49

    move/from16 v0, v17

    if-ne v7, v0, :cond_18

    const/16 v17, 0x56

    move/from16 v0, v17

    if-ne v8, v0, :cond_18

    .line 270
    :try_start_1
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodePrivFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/PrivFrame;

    move-result-object v4

    .restart local v4    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_d

    .line 271
    .end local v4    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :cond_18
    const/16 v17, 0x47

    move/from16 v0, v17

    if-ne v5, v0, :cond_1a

    const/16 v17, 0x45

    move/from16 v0, v17

    if-ne v6, v0, :cond_1a

    const/16 v17, 0x4f

    move/from16 v0, v17

    if-ne v7, v0, :cond_1a

    const/16 v17, 0x42

    move/from16 v0, v17

    if-eq v8, v0, :cond_19

    const/16 v17, 0x2

    move/from16 v0, p0

    move/from16 v1, v17

    if-ne v0, v1, :cond_1a

    .line 273
    :cond_19
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeGeobFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;

    move-result-object v4

    .restart local v4    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_d

    .line 274
    .end local v4    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :cond_1a
    const/16 v17, 0x2

    move/from16 v0, p0

    move/from16 v1, v17

    if-ne v0, v1, :cond_1c

    const/16 v17, 0x50

    move/from16 v0, v17

    if-ne v5, v0, :cond_1d

    const/16 v17, 0x49

    move/from16 v0, v17

    if-ne v6, v0, :cond_1d

    const/16 v17, 0x43

    move/from16 v0, v17

    if-ne v7, v0, :cond_1d

    .line 276
    :cond_1b
    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-static {v0, v9, v1}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeApicFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;

    move-result-object v4

    .restart local v4    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    goto :goto_d

    .line 274
    .end local v4    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :cond_1c
    const/16 v17, 0x41

    move/from16 v0, v17

    if-ne v5, v0, :cond_1d

    const/16 v17, 0x50

    move/from16 v0, v17

    if-ne v6, v0, :cond_1d

    const/16 v17, 0x49

    move/from16 v0, v17

    if-ne v7, v0, :cond_1d

    const/16 v17, 0x43

    move/from16 v0, v17

    if-eq v8, v0, :cond_1b

    .line 277
    :cond_1d
    const/16 v17, 0x54

    move/from16 v0, v17

    if-ne v5, v0, :cond_1f

    .line 278
    const/16 v17, 0x2

    move/from16 v0, p0

    move/from16 v1, v17

    if-ne v0, v1, :cond_1e

    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v18, "%c%c%c"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 279
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 281
    .local v12, "id":Ljava/lang/String;
    :goto_e
    move-object/from16 v0, p1

    invoke-static {v0, v9, v12}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeTextInformationFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v4

    .line 282
    .restart local v4    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 279
    .end local v4    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    .end local v12    # "id":Ljava/lang/String;
    :cond_1e
    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v18, "%c%c%c%c"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 280
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_e

    .line 282
    :cond_1f
    const/16 v17, 0x43

    move/from16 v0, v17

    if-ne v5, v0, :cond_21

    const/16 v17, 0x4f

    move/from16 v0, v17

    if-ne v6, v0, :cond_21

    const/16 v17, 0x4d

    move/from16 v0, v17

    if-ne v7, v0, :cond_21

    const/16 v17, 0x4d

    move/from16 v0, v17

    if-eq v8, v0, :cond_20

    const/16 v17, 0x2

    move/from16 v0, p0

    move/from16 v1, v17

    if-ne v0, v1, :cond_21

    .line 284
    :cond_20
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeCommentFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;

    move-result-object v4

    .restart local v4    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 286
    .end local v4    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    :cond_21
    const/16 v17, 0x2

    move/from16 v0, p0

    move/from16 v1, v17

    if-ne v0, v1, :cond_22

    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v18, "%c%c%c"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 287
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 289
    .restart local v12    # "id":Ljava/lang/String;
    :goto_f
    move-object/from16 v0, p1

    invoke-static {v0, v9, v12}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeBinaryFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/metadata/id3/BinaryFrame;

    move-result-object v4

    .restart local v4    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    goto/16 :goto_d

    .line 287
    .end local v4    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    .end local v12    # "id":Ljava/lang/String;
    :cond_22
    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v18, "%c%c%c%c"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 288
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    goto :goto_f

    .line 292
    :catch_0
    move-exception v2

    .line 293
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string/jumbo v17, "Id3Decoder"

    const-string/jumbo v18, "Unsupported character encoding"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    const/4 v4, 0x0

    .line 296
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_3

    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    throw v17
.end method

.method private static decodeGeobFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;
    .locals 15
    .param p0, "id3Data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 335
    .local v5, "encoding":I
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "charset":Ljava/lang/String;
    add-int/lit8 v13, p1, -0x1

    new-array v1, v13, [B

    .line 338
    .local v1, "data":[B
    const/4 v13, 0x0

    add-int/lit8 v14, p1, -0x1

    invoke-virtual {p0, v1, v13, v14}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 340
    const/4 v13, 0x0

    invoke-static {v1, v13}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v10

    .line 341
    .local v10, "mimeTypeEndIndex":I
    new-instance v9, Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "ISO-8859-1"

    invoke-direct {v9, v1, v13, v10, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 343
    .local v9, "mimeType":Ljava/lang/String;
    add-int/lit8 v8, v10, 0x1

    .line 344
    .local v8, "filenameStartIndex":I
    invoke-static {v1, v8, v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v7

    .line 345
    .local v7, "filenameEndIndex":I
    new-instance v6, Ljava/lang/String;

    sub-int v13, v7, v8

    invoke-direct {v6, v1, v8, v13, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 348
    .local v6, "filename":Ljava/lang/String;
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v13

    add-int v4, v7, v13

    .line 349
    .local v4, "descriptionStartIndex":I
    invoke-static {v1, v4, v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 350
    .local v3, "descriptionEndIndex":I
    new-instance v2, Ljava/lang/String;

    sub-int v13, v3, v4

    invoke-direct {v2, v1, v4, v13, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 353
    .local v2, "description":Ljava/lang/String;
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v13

    add-int v12, v3, v13

    .line 354
    .local v12, "objectDataStartIndex":I
    array-length v13, v1

    invoke-static {v1, v12, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 356
    .local v11, "objectData":[B
    new-instance v13, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;

    invoke-direct {v13, v9, v6, v2, v11}, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v13
.end method

.method private static decodeHeader(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;
    .locals 14
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    const/4 v13, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 101
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v11

    const/16 v12, 0xa

    if-ge v11, v12, :cond_0

    .line 102
    const-string/jumbo v9, "Id3Decoder"

    const-string/jumbo v11, "Data too short to be an ID3 tag"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 148
    :goto_0
    return-object v9

    .line 106
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v5

    .line 107
    .local v5, "id":I
    sget v11, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->ID3_TAG:I

    if-eq v5, v11, :cond_1

    .line 108
    const-string/jumbo v9, "Id3Decoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unexpected first three bytes of ID3 tag header: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 109
    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 113
    .local v8, "majorVersion":I
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 114
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 115
    .local v1, "flags":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v2

    .line 117
    .local v2, "framesSize":I
    const/4 v11, 0x2

    if-ne v8, v11, :cond_3

    .line 118
    and-int/lit8 v11, v1, 0x40

    if-eqz v11, :cond_2

    move v6, v7

    .line 119
    .local v6, "isCompressed":Z
    :goto_1
    if-eqz v6, :cond_4

    .line 120
    const-string/jumbo v9, "Id3Decoder"

    const-string/jumbo v11, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 121
    goto :goto_0

    .end local v6    # "isCompressed":Z
    :cond_2
    move v6, v9

    .line 118
    goto :goto_1

    .line 123
    :cond_3
    const/4 v11, 0x3

    if-ne v8, v11, :cond_6

    .line 124
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_5

    move v3, v7

    .line 125
    .local v3, "hasExtendedHeader":Z
    :goto_2
    if-eqz v3, :cond_4

    .line 126
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 127
    .local v0, "extendedHeaderSize":I
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 128
    add-int/lit8 v10, v0, 0x4

    sub-int/2addr v2, v10

    .line 147
    .end local v0    # "extendedHeaderSize":I
    .end local v3    # "hasExtendedHeader":Z
    :cond_4
    :goto_3
    if-ge v8, v13, :cond_b

    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_b

    .line 148
    .local v7, "isUnsynchronized":Z
    :goto_4
    new-instance v9, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;

    invoke-direct {v9, v8, v7, v2}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;-><init>(IZI)V

    goto :goto_0

    .end local v7    # "isUnsynchronized":Z
    :cond_5
    move v3, v9

    .line 124
    goto :goto_2

    .line 130
    :cond_6
    if-ne v8, v13, :cond_a

    .line 131
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_8

    move v3, v7

    .line 132
    .restart local v3    # "hasExtendedHeader":Z
    :goto_5
    if-eqz v3, :cond_7

    .line 133
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    .line 134
    .restart local v0    # "extendedHeaderSize":I
    add-int/lit8 v10, v0, -0x4

    invoke-virtual {p0, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 135
    sub-int/2addr v2, v0

    .line 137
    .end local v0    # "extendedHeaderSize":I
    :cond_7
    and-int/lit8 v10, v1, 0x10

    if-eqz v10, :cond_9

    move v4, v7

    .line 138
    .local v4, "hasFooter":Z
    :goto_6
    if-eqz v4, :cond_4

    .line 139
    add-int/lit8 v2, v2, -0xa

    goto :goto_3

    .end local v3    # "hasExtendedHeader":Z
    .end local v4    # "hasFooter":Z
    :cond_8
    move v3, v9

    .line 131
    goto :goto_5

    .restart local v3    # "hasExtendedHeader":Z
    :cond_9
    move v4, v9

    .line 137
    goto :goto_6

    .line 142
    .end local v3    # "hasExtendedHeader":Z
    :cond_a
    const-string/jumbo v9, "Id3Decoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Skipped ID3 tag with unsupported majorVersion="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .line 143
    goto/16 :goto_0

    :cond_b
    move v7, v9

    .line 147
    goto :goto_4
.end method

.method private static decodePrivFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/PrivFrame;
    .locals 7
    .param p0, "id3Data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 320
    new-array v0, p1, [B

    .line 321
    .local v0, "data":[B
    invoke-virtual {p0, v0, v6, p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 323
    invoke-static {v0, v6}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 324
    .local v2, "ownerEndIndex":I
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v5, "ISO-8859-1"

    invoke-direct {v1, v0, v6, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 326
    .local v1, "owner":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    .line 327
    .local v4, "privateDataStartIndex":I
    array-length v5, v0

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 329
    .local v3, "privateData":[B
    new-instance v5, Lorg/telegram/messenger/exoplayer2/metadata/id3/PrivFrame;

    invoke-direct {v5, v1, v3}, Lorg/telegram/messenger/exoplayer2/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    return-object v5
.end method

.method private static decodeTextInformationFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 7
    .param p0, "id3Data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 420
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 421
    .local v4, "encoding":I
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "charset":Ljava/lang/String;
    add-int/lit8 v5, p1, -0x1

    new-array v1, v5, [B

    .line 424
    .local v1, "data":[B
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v1, v6, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 426
    invoke-static {v1, v6, v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 427
    .local v3, "descriptionEndIndex":I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v6, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 429
    .local v2, "description":Ljava/lang/String;
    new-instance v5, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {v5, p2, v2}, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method private static decodeTxxxFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;
    .locals 10
    .param p0, "id3Data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "frameSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 302
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 303
    .local v4, "encoding":I
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "charset":Ljava/lang/String;
    add-int/lit8 v8, p1, -0x1

    new-array v1, v8, [B

    .line 306
    .local v1, "data":[B
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v1, v9, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 308
    invoke-static {v1, v9, v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 309
    .local v3, "descriptionEndIndex":I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v9, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 311
    .local v2, "description":Ljava/lang/String;
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v8

    add-int v7, v3, v8

    .line 312
    .local v7, "valueStartIndex":I
    invoke-static {v1, v7, v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v6

    .line 313
    .local v6, "valueEndIndex":I
    new-instance v5, Ljava/lang/String;

    sub-int v8, v6, v7

    invoke-direct {v5, v1, v7, v8, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 315
    .local v5, "value":Ljava/lang/String;
    new-instance v8, Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;

    invoke-direct {v8, v2, v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method private static delimiterLength(I)I
    .locals 1
    .param p0, "encodingByte"    # I

    .prologue
    .line 508
    if-eqz p0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getCharsetName(I)Ljava/lang/String;
    .locals 1
    .param p0, "encodingByte"    # I

    .prologue
    .line 465
    packed-switch p0, :pswitch_data_0

    .line 475
    const-string/jumbo v0, "ISO-8859-1"

    :goto_0
    return-object v0

    .line 467
    :pswitch_0
    const-string/jumbo v0, "ISO-8859-1"

    goto :goto_0

    .line 469
    :pswitch_1
    const-string/jumbo v0, "UTF-16"

    goto :goto_0

    .line 471
    :pswitch_2
    const-string/jumbo v0, "UTF-16BE"

    goto :goto_0

    .line 473
    :pswitch_3
    const-string/jumbo v0, "UTF-8"

    goto :goto_0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static indexOfEos([BII)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "encoding"    # I

    .prologue
    .line 480
    invoke-static {p0, p1}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    .line 483
    .local v0, "terminationPos":I
    if-eqz p2, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    :cond_0
    move v1, v0

    .line 495
    :goto_0
    return v1

    .line 492
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    .line 488
    :cond_2
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 489
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    move v1, v0

    .line 490
    goto :goto_0

    .line 495
    :cond_3
    array-length v1, p0

    goto :goto_0
.end method

.method private static indexOfZeroByte([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "fromIndex"    # I

    .prologue
    .line 499
    move v0, p1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 500
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    .line 504
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 499
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    :cond_1
    array-length v0, p0

    goto :goto_1
.end method

.method private static removeUnsynchronization(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)I
    .locals 5
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "length"    # I

    .prologue
    .line 449
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    .line 450
    .local v0, "bytes":[B
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    if-ge v2, p1, :cond_1

    .line 451
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, v0, v2

    if-nez v2, :cond_0

    .line 452
    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x1

    sub-int v4, p1, v1

    add-int/lit8 v4, v4, -0x2

    invoke-static {v0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    add-int/lit8 p1, p1, -0x1

    .line 450
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    :cond_1
    return p1
.end method

.method private static validateV4Frames(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)Z
    .locals 12
    .param p0, "id3Data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p1, "unsignedIntFrameSizeHack"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 153
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 155
    .local v4, "startPosition":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    const/16 v8, 0xa

    if-lt v7, v8, :cond_7

    .line 156
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 157
    .local v2, "id":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 158
    .local v1, "frameSize":I
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 159
    .local v0, "flags":I
    if-nez v2, :cond_0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .end local v0    # "flags":I
    .end local v1    # "frameSize":I
    .end local v2    # "id":I
    :goto_1
    return v5

    .line 162
    .restart local v0    # "flags":I
    .restart local v1    # "frameSize":I
    .restart local v2    # "id":I
    :cond_0
    if-nez p1, :cond_2

    .line 164
    int-to-long v8, v1

    const-wide/32 v10, 0x808080

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    .line 188
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move v5, v6

    goto :goto_1

    .line 167
    :cond_1
    and-int/lit16 v7, v1, 0xff

    shr-int/lit8 v8, v1, 0x8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x7

    or-int/2addr v7, v8

    shr-int/lit8 v8, v1, 0x10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0xe

    or-int/2addr v7, v8

    shr-int/lit8 v8, v1, 0x18

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x15

    or-int v1, v7, v8

    .line 170
    :cond_2
    const/4 v3, 0x0

    .line 171
    .local v3, "minimumFrameSize":I
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_3

    .line 172
    add-int/lit8 v3, v3, 0x1

    .line 174
    :cond_3
    and-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_4

    .line 175
    add-int/lit8 v3, v3, 0x4

    .line 177
    :cond_4
    if-ge v1, v3, :cond_5

    .line 188
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move v5, v6

    goto :goto_1

    .line 180
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-ge v7, v1, :cond_6

    .line 188
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move v5, v6

    goto :goto_1

    .line 183
    :cond_6
    :try_start_2
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 188
    .end local v0    # "flags":I
    .end local v1    # "frameSize":I
    .end local v2    # "id":I
    .end local v3    # "minimumFrameSize":I
    :catchall_0
    move-exception v5

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    throw v5

    :cond_7
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_1
.end method


# virtual methods
.method public canDecode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string/jumbo v0, "application/id3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public decode([BI)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
    .locals 11
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    const/4 v8, 0x0

    .line 58
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v4, "id3Frames":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;>;"
    new-instance v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v3, p1, p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    .line 61
    .local v3, "id3Data":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeHeader(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;

    move-result-object v5

    .line 62
    .local v5, "id3Header":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;
    if-nez v5, :cond_0

    .line 93
    :goto_0
    return-object v8

    .line 66
    :cond_0
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    .line 67
    .local v6, "startPosition":I
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v2

    .line 68
    .local v2, "framesSize":I
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$100(Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 69
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v9

    invoke-static {v3, v9}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->removeUnsynchronization(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)I

    move-result v2

    .line 71
    :cond_1
    add-int v9, v6, v2

    invoke-virtual {v3, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 73
    const/4 v7, 0x0

    .line 74
    .local v7, "unsignedIntFrameSizeHack":Z
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$200(Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    .line 75
    const/4 v9, 0x0

    invoke-static {v3, v9}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->validateV4Frames(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)Z

    move-result v9

    if-nez v9, :cond_2

    .line 76
    const/4 v9, 0x1

    invoke-static {v3, v9}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->validateV4Frames(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 77
    const/4 v7, 0x1

    .line 85
    :cond_2
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$200(Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    const/4 v1, 0x6

    .line 86
    .local v1, "frameHeaderSize":I
    :cond_3
    :goto_1
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    if-lt v8, v1, :cond_6

    .line 87
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$200(Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v8

    invoke-static {v8, v3, v7}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeFrame(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v0

    .line 88
    .local v0, "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    if-eqz v0, :cond_3

    .line 89
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    .end local v0    # "frame":Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    .end local v1    # "frameHeaderSize":I
    :cond_4
    const-string/jumbo v9, "Id3Decoder"

    const-string/jumbo v10, "Failed to validate V4 ID3 tag"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_5
    const/16 v1, 0xa

    goto :goto_1

    .line 93
    .restart local v1    # "frameHeaderSize":I
    :cond_6
    new-instance v8, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    invoke-direct {v8, v4}, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method
