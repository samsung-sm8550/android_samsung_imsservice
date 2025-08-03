.class public Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;
.super Ljava/lang/Object;
.source "SsacInfo.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = "SsacInfo"


# instance fields
.field private mKnownVideoBarringType:Z

.field private mKnownVoiceBarringType:Z

.field private mVideoFactor:I

.field private mVideoTime:I

.field private mVoiceFactor:I

.field private mVoiceTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(IIII)V
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 31
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;-><init>(IIZIIZ)V

    return-void
.end method

.method constructor <init>(IIZIIZ)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mVoiceFactor:I

    .line 23
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mVideoFactor:I

    .line 24
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mVoiceTime:I

    .line 25
    iput p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mVideoTime:I

    .line 26
    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mKnownVoiceBarringType:Z

    .line 27
    iput-boolean p6, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mKnownVideoBarringType:Z

    return-void
.end method

.method constructor <init>(Landroid/telephony/BarringInfo;)V
    .locals 6

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 35
    invoke-virtual {p1, v0}, Landroid/telephony/BarringInfo;->getBarringServiceInfo(I)Landroid/telephony/BarringInfo$BarringServiceInfo;

    move-result-object v0

    const/4 v1, 0x7

    .line 36
    invoke-virtual {p1, v1}, Landroid/telephony/BarringInfo;->getBarringServiceInfo(I)Landroid/telephony/BarringInfo$BarringServiceInfo;

    move-result-object p1

    .line 37
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "voiceBarringInfo mConditionalBarringFactor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/BarringInfo$BarringServiceInfo;->getConditionalBarringFactor()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mConditionalBarringTimeSeconds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Landroid/telephony/BarringInfo$BarringServiceInfo;->getConditionalBarringTimeSeconds()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "videoBarringInfo mConditionalBarringFactor:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/BarringInfo$BarringServiceInfo;->getConditionalBarringFactor()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1}, Landroid/telephony/BarringInfo$BarringServiceInfo;->getConditionalBarringTimeSeconds()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    .line 42
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mVideoFactor:I

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mVoiceFactor:I

    const/4 v1, 0x0

    .line 43
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mVideoTime:I

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mVoiceTime:I

    .line 45
    invoke-virtual {v0}, Landroid/telephony/BarringInfo$BarringServiceInfo;->getBarringType()I

    move-result v2

    .line 46
    invoke-virtual {p1}, Landroid/telephony/BarringInfo$BarringServiceInfo;->getBarringType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/telephony/BarringInfo$BarringServiceInfo;->getConditionalBarringFactor()I

    move-result v5

    iput v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mVoiceFactor:I

    .line 50
    invoke-virtual {v0}, Landroid/telephony/BarringInfo$BarringServiceInfo;->getConditionalBarringTimeSeconds()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mVoiceTime:I

    :cond_0
    if-ne v3, v4, :cond_1

    .line 53
    invoke-virtual {p1}, Landroid/telephony/BarringInfo$BarringServiceInfo;->getConditionalBarringFactor()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mVideoFactor:I

    .line 54
    invoke-virtual {p1}, Landroid/telephony/BarringInfo$BarringServiceInfo;->getConditionalBarringTimeSeconds()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mVideoTime:I

    :cond_1
    const/4 p1, 0x2

    if-eq v2, v4, :cond_3

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v4

    .line 57
    :goto_1
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mKnownVoiceBarringType:Z

    if-eq v3, v4, :cond_4

    if-ne v3, p1, :cond_5

    :cond_4
    move v1, v4

    .line 58
    :cond_5
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mKnownVideoBarringType:Z

    return-void
.end method


# virtual methods
.method public getVideoFactor()I
    .locals 0

    .line 70
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mVideoFactor:I

    return p0
.end method

.method public getVideoTime()I
    .locals 0

    .line 86
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mVideoTime:I

    return p0
.end method

.method public getVoiceFactor()I
    .locals 0

    .line 62
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mVoiceFactor:I

    return p0
.end method

.method public getVoiceTime()I
    .locals 0

    .line 78
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mVoiceTime:I

    return p0
.end method

.method public isKnownVideoBarringType()Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mKnownVideoBarringType:Z

    return p0
.end method

.method public isKnownVoiceBarringType()Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mKnownVoiceBarringType:Z

    return p0
.end method

.method public setKnownVideoBarringType(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mKnownVideoBarringType:Z

    return-void
.end method

.method public setKnownVoiceBarringType(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mKnownVoiceBarringType:Z

    return-void
.end method

.method public setVideoFactor(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mVideoFactor:I

    return-void
.end method

.method public setVideoTime(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mVideoTime:I

    return-void
.end method

.method public setVoiceFactor(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mVoiceFactor:I

    return-void
.end method

.method public setVoiceTime(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->mVoiceTime:I

    return-void
.end method
