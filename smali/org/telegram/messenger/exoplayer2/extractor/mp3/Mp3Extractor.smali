.class public final Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;
.super Ljava/lang/Object;
.source "Mp3Extractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;
    }
.end annotation


# static fields
.field public static final FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

.field private static final HEADER_MASK:I = -0x1f400

.field private static final INFO_HEADER:I

.field private static final MAX_SNIFF_BYTES:I = 0x1000

.field private static final MAX_SYNC_BYTES:I = 0x20000

.field private static final SCRATCH_LENGTH:I = 0xa

.field private static final VBRI_HEADER:I

.field private static final XING_HEADER:I


# instance fields
.field private basisTimeUs:J

.field private extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

.field private final forcedFirstSampleTimestampUs:J

.field private final gaplessInfoHolder:Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;

.field private metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

.field private sampleBytesRemaining:I

.field private samplesRead:J

.field private final scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private seeker:Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

.field private final synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

.field private synchronizedHeaderData:I

.field private trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

    const-string/jumbo v0, "Xing"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->XING_HEADER:I

    const-string/jumbo v0, "Info"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->INFO_HEADER:I

    const-string/jumbo v0, "VBRI"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->VBRI_HEADER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "forcedFirstSampleTimestampUs"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    return-void
.end method

.method private peekId3Data(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V
    .locals 8
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    const/4 v2, 0x0

    .local v2, "peekedId3Bytes":I
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v4, v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v4

    sget v5, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->ID3_TAG:I

    if-eq v4, v5, :cond_0

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-interface {p1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    return-void

    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    .local v0, "framesLength":I
    add-int/lit8 v3, v0, 0xa

    .local v3, "tagLength":I
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    if-nez v4, :cond_2

    new-array v1, v3, [B

    .local v1, "id3Data":[B
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v4, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p1, v1, v7, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    new-instance v4, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;

    invoke-direct {v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;-><init>()V

    invoke-virtual {v4, v1, v3}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decode([BI)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->setFromMetadata(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)Z

    .end local v1    # "id3Data":[B
    :cond_1
    :goto_1
    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_1
.end method

.method private readSample(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)I
    .locals 14
    .param p1, "extractorInput"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-nez v1, :cond_4

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-interface {p1, v1, v4, v5, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    .local v10, "sampleHeaderData":I
    const v1, -0x1f400

    and-int/2addr v1, v10

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    const v5, -0x1f400

    and-int/2addr v4, v5

    if-ne v1, v4, :cond_1

    invoke-static {v10}, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->getFrameSize(I)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    invoke-static {v10, v1}, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->populateHeader(ILorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;)Z

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;->getTimeUs(J)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;->getTimeUs(J)J

    move-result-wide v8

    .local v8, "embeddedFirstSampleTimestampUs":J
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .end local v8    # "embeddedFirstSampleTimestampUs":J
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .end local v10    # "sampleHeaderData":I
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    const/4 v5, 0x1

    invoke-interface {v1, p1, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v0

    .local v0, "bytesAppended":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    const/4 v1, -0x1

    goto :goto_0

    :cond_5
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-lez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    const-wide/32 v12, 0xf4240

    mul-long/2addr v6, v12

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    int-to-long v12, v1

    div-long/2addr v6, v12

    add-long v2, v4, v6

    .local v2, "timeUs":J
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->samplesPerFrame:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupSeeker(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;
    .locals 14
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x24

    const/16 v13, 0x15

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v7, v7, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    invoke-direct {v1, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .local v1, "frame":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    iget-object v7, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v8, v8, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    invoke-interface {p1, v7, v9, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    .local v2, "position":J
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    .local v4, "length":J
    const/4 v12, 0x0

    .local v12, "headerData":I
    const/4 v6, 0x0

    .local v6, "seeker":Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v7, v7, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->version:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_6

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v7, v7, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->channels:I

    if-eq v7, v10, :cond_0

    move v13, v0

    .local v13, "xingBase":I
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v7

    add-int/lit8 v8, v13, 0x4

    if-lt v7, v8, :cond_1

    invoke-virtual {v1, v13}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    :cond_1
    sget v7, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->XING_HEADER:I

    if-eq v12, v7, :cond_2

    sget v7, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->INFO_HEADER:I

    if-ne v12, v7, :cond_7

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/XingSeeker;->create(Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;JJ)Lorg/telegram/messenger/exoplayer2/extractor/mp3/XingSeeker;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit16 v0, v13, 0x8d

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v7, 0x3

    invoke-interface {p1, v0, v9, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v7

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->setFromXingHeaderValue(I)Z

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    :cond_4
    :goto_1
    if-nez v6, :cond_5

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v7, 0x4

    invoke-interface {p1, v0, v9, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    invoke-static {v0, v7}, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->populateHeader(ILorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;)Z

    new-instance v6, Lorg/telegram/messenger/exoplayer2/extractor/mp3/ConstantBitrateSeeker;

    .end local v6    # "seeker":Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->bitrate:I

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/ConstantBitrateSeeker;-><init>(JIJ)V

    .restart local v6    # "seeker":Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;
    :cond_5
    return-object v6

    .end local v13    # "xingBase":I
    :cond_6
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v7, v7, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->channels:I

    if-ne v7, v10, :cond_0

    const/16 v13, 0xd

    goto/16 :goto_0

    .restart local v13    # "xingBase":I
    :cond_7
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v7

    const/16 v8, 0x28

    if-lt v7, v8, :cond_4

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->VBRI_HEADER:I

    if-ne v12, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/VbriSeeker;->create(Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;JJ)Lorg/telegram/messenger/exoplayer2/extractor/mp3/VbriSeeker;

    move-result-object v6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_1
.end method

.method private synchronize(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Z)Z
    .locals 12
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "sniffing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .local v7, "validFrameCount":I
    const/4 v0, 0x0

    .local v0, "candidateSynchronizedHeaderData":I
    const/4 v3, 0x0

    .local v3, "peekedId3Bytes":I
    const/4 v5, 0x0

    .local v5, "searchedBytes":I
    if-eqz p2, :cond_1

    const/16 v4, 0x1000

    .local v4, "searchLimitBytes":I
    :goto_0
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->peekId3Data(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v8

    long-to-int v3, v8

    if-nez p2, :cond_0

    invoke-interface {p1, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    :cond_0
    :goto_1
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v9, v8, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v10, 0x0

    const/4 v11, 0x4

    if-lez v7, :cond_2

    const/4 v8, 0x1

    :goto_2
    invoke-interface {p1, v9, v10, v11, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v8

    if-nez v8, :cond_3

    :goto_3
    if-eqz p2, :cond_c

    add-int v8, v3, v5

    invoke-interface {p1, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    :goto_4
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    const/4 v8, 0x1

    :goto_5
    return v8

    .end local v4    # "searchLimitBytes":I
    :cond_1
    const/high16 v4, 0x20000

    goto :goto_0

    .restart local v4    # "searchLimitBytes":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .local v2, "headerData":I
    if-eqz v0, :cond_4

    const v8, -0x1f400

    and-int/2addr v8, v2

    const v9, -0x1f400

    and-int/2addr v9, v0

    if-ne v8, v9, :cond_5

    :cond_4
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->getFrameSize(I)I

    move-result v1

    .local v1, "frameSize":I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_9

    .end local v1    # "frameSize":I
    :cond_5
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "searchedBytes":I
    .local v6, "searchedBytes":I
    if-ne v5, v4, :cond_7

    if-nez p2, :cond_6

    new-instance v8, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v9, "Searched too many bytes."

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    const/4 v8, 0x0

    move v5, v6

    .end local v6    # "searchedBytes":I
    .restart local v5    # "searchedBytes":I
    goto :goto_5

    .end local v5    # "searchedBytes":I
    .restart local v6    # "searchedBytes":I
    :cond_7
    const/4 v7, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    add-int v8, v3, v6

    invoke-interface {p1, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    move v5, v6

    .end local v6    # "searchedBytes":I
    .restart local v5    # "searchedBytes":I
    goto :goto_1

    .end local v5    # "searchedBytes":I
    .restart local v6    # "searchedBytes":I
    :cond_8
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    move v5, v6

    .end local v6    # "searchedBytes":I
    .restart local v5    # "searchedBytes":I
    goto :goto_1

    .restart local v1    # "frameSize":I
    :cond_9
    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    invoke-static {v2, v8}, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->populateHeader(ILorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;)Z

    move v0, v2

    :cond_a
    add-int/lit8 v8, v1, -0x4

    invoke-interface {p1, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_1

    :cond_b
    const/4 v8, 0x4

    if-ne v7, v8, :cond_a

    goto :goto_3

    .end local v1    # "frameSize":I
    .end local v2    # "headerData":I
    :cond_c
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_4
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V
    .locals 2
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    .locals 19
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronize(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

    if-nez v2, :cond_1

    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->setupSeeker(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

    invoke-interface {v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v18, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->mimeType:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v6, 0x1000

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v7, v7, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->channels:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v8, v8, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    const/4 v9, -0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;

    iget v10, v10, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;

    iget v11, v11, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-object/from16 v16, v0

    invoke-static/range {v2 .. v16}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    :cond_1
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->readSample(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)I

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v17

    .local v17, "e":Ljava/io/EOFException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    return-void
.end method

.method public seek(J)V
    .locals 3
    .param p1, "position"    # J

    .prologue
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronize(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method
