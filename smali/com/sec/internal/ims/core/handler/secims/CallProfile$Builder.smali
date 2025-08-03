.class public Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
.super Ljava/lang/Object;
.source "CallProfile.java"


# instance fields
.field amrBeMaxRed:I

.field amrBeWbMaxRed:I

.field amrMode:Ljava/lang/String;

.field amrOaMaxRed:I

.field amrOaPayloadType:I

.field amrOaWbMaxRed:I

.field amrOpenPayloadType:I

.field amrPayloadType:I

.field amrWbMode:Ljava/lang/String;

.field amrWbOaPayloadType:I

.field amrWbPayloadType:I

.field audioAs:I

.field audioAvpf:Z

.field audioCodec:Ljava/lang/String;

.field audioDscp:I

.field audioPort:I

.field audioRr:I

.field audioRs:I

.field audioRtcpXr:Z

.field audioSrtp:Z

.field displayFormat:Ljava/lang/String;

.field displayFormatHevc:Ljava/lang/String;

.field dtmfMode:I

.field dtmfPayloadType:I

.field dtmfWbPayloadType:I

.field enableAvSync:Z

.field enableEvsCodec:Z

.field enableRtcpOnActiveCall:Z

.field enableScr:Z

.field evs2ndPayload:I

.field evsBandwidthReceive:Ljava/lang/String;

.field evsBandwidthReceiveExt:Ljava/lang/String;

.field evsBandwidthSend:Ljava/lang/String;

.field evsBandwidthSendExt:Ljava/lang/String;

.field evsBitRateReceive:Ljava/lang/String;

.field evsBitRateReceiveExt:Ljava/lang/String;

.field evsBitRateSend:Ljava/lang/String;

.field evsBitRateSendExt:Ljava/lang/String;

.field evsChannelAwareReceive:Ljava/lang/String;

.field evsChannelRecv:Ljava/lang/String;

.field evsChannelSend:Ljava/lang/String;

.field evsCodecModeRequest:Ljava/lang/String;

.field evsDefaultBandwidth:Ljava/lang/String;

.field evsDefaultBitrate:Ljava/lang/String;

.field evsDiscontinuousTransmission:Ljava/lang/String;

.field evsDtxRecv:Ljava/lang/String;

.field evsHeaderFull:Ljava/lang/String;

.field evsLimitedCodec:Ljava/lang/String;

.field evsMaxRed:I

.field evsModeSwitch:Ljava/lang/String;

.field evsPayload:I

.field evsPayloadExt:I

.field evsUseDefaultRtcpBw:Z

.field frameRate:I

.field h263QcifPayloadType:I

.field h264720pLPayloadType:I

.field h264720pPayloadType:I

.field h264CifLPayloadType:I

.field h264CifPayloadType:I

.field h264QvgaLPayloadType:I

.field h264QvgaPayloadType:I

.field h264VgaLPayloadType:I

.field h264VgaPayloadType:I

.field h265Hd720pLPayloadType:I

.field h265Hd720pPayloadType:I

.field h265QvgaLPayloadType:I

.field h265QvgaPayloadType:I

.field h265VgaLPayloadType:I

.field h265VgaPayloadType:I

.field ignoreRtcpTimeoutOnHoldCall:Z

.field maxPTime:I

.field pTime:I

.field packetizationMode:Ljava/lang/String;

.field rtcpTimeout:I

.field rtpTimeout:I

.field t140PayloadType:I

.field t140RedPayloadType:I

.field textAs:I

.field textAvpf:Z

.field textPort:I

.field textRr:I

.field textRs:I

.field textSrtp:Z

.field useSpsForH264Hd:Z

.field videoAs:I

.field videoAvpf:Z

.field videoCapabilities:Z

.field videoCodec:Ljava/lang/String;

.field videoPort:I

.field videoRr:I

.field videoRs:I

.field videoRtcpXr:Z

.field videoSrtp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 243
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->pTime:I

    const/16 v0, 0xf0

    .line 244
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->maxPTime:I

    return-void
.end method

.method public static newBuilder()Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 1

    .line 319
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    .locals 1

    .line 323
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile;-><init>(Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;)V

    return-object v0
.end method

.method public setAmrBeMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 382
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrBeMaxRed:I

    return-object p0
.end method

.method public setAmrBeWbMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 392
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrBeWbMaxRed:I

    return-object p0
.end method

.method public setAmrMode(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrMode:Ljava/lang/String;

    return-object p0
.end method

.method public setAmrOaMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 377
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrOaMaxRed:I

    return-object p0
.end method

.method public setAmrOaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 347
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrOaPayloadType:I

    return-object p0
.end method

.method public setAmrOaWbMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 387
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrOaWbMaxRed:I

    return-object p0
.end method

.method public setAmrOpenPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 362
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrOpenPayloadType:I

    return-object p0
.end method

.method public setAmrPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 342
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrPayloadType:I

    return-object p0
.end method

.method public setAmrWbMode(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrWbMode:Ljava/lang/String;

    return-object p0
.end method

.method public setAmrWbOaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 357
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrWbOaPayloadType:I

    return-object p0
.end method

.method public setAmrWbPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 352
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrWbPayloadType:I

    return-object p0
.end method

.method public setAudioAs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 412
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioAs:I

    return-object p0
.end method

.method public setAudioAvpf(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 562
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioAvpf:Z

    return-object p0
.end method

.method public setAudioCodec(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioCodec:Ljava/lang/String;

    return-object p0
.end method

.method public setAudioDscp(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 337
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioDscp:I

    return-object p0
.end method

.method public setAudioPort(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 332
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioPort:I

    return-object p0
.end method

.method public setAudioRr(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 422
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioRr:I

    return-object p0
.end method

.method public setAudioRs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 417
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioRs:I

    return-object p0
.end method

.method public setAudioRtcpXr(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 657
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioRtcpXr:Z

    return-object p0
.end method

.method public setAudioSrtp(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 567
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioSrtp:Z

    return-object p0
.end method

.method public setDisplayFormat(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->displayFormat:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayFormatHevc(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->displayFormatHevc:Ljava/lang/String;

    return-object p0
.end method

.method public setDtmfMode(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 667
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->dtmfMode:I

    return-object p0
.end method

.method public setDtmfPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 372
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->dtmfPayloadType:I

    return-object p0
.end method

.method public setDtmfWbPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 367
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->dtmfWbPayloadType:I

    return-object p0
.end method

.method public setEnableAvSync(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 647
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->enableAvSync:Z

    return-object p0
.end method

.method public setEnableEvsCodec(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 672
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->enableEvsCodec:Z

    return-object p0
.end method

.method public setEnableRtcpOnActiveCall(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 642
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->enableRtcpOnActiveCall:Z

    return-object p0
.end method

.method public setEnableScr(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 652
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->enableScr:Z

    return-object p0
.end method

.method public setEvs2ndPayload(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 742
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evs2ndPayload:I

    return-object p0
.end method

.method public setEvsBandwidthReceive(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 732
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBandwidthReceive:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsBandwidthReceiveExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 777
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBandwidthReceiveExt:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsBandwidthSend(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBandwidthSend:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsBandwidthSendExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 772
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBandwidthSendExt:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsBitRateReceive(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBitRateReceive:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsBitRateReceiveExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBitRateReceiveExt:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsBitRateSend(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBitRateSend:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsBitRateSendExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 762
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBitRateSendExt:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsChannelAwareReceive(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsChannelAwareReceive:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsChannelRecv(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsChannelRecv:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsChannelSend(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsChannelSend:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsCodecModeRequest(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsCodecModeRequest:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsDefaultBandwidth(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 747
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsDefaultBandwidth:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsDefaultBitrate(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 752
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsDefaultBitrate:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsDiscontinuousTransmission(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsDiscontinuousTransmission:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsDtxRecv(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 682
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsDtxRecv:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsHeaderFull(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsHeaderFull:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsLimitedCodec(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 782
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsLimitedCodec:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 397
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsMaxRed:I

    return-object p0
.end method

.method public setEvsModeSwitch(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsModeSwitch:Ljava/lang/String;

    return-object p0
.end method

.method public setEvsPayload(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 737
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsPayload:I

    return-object p0
.end method

.method public setEvsPayloadExt(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 757
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsPayloadExt:I

    return-object p0
.end method

.method public setEvsUseDefaultRtcpBw(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 787
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsUseDefaultRtcpBw:Z

    return-object p0
.end method

.method public setFrameRate(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 447
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->frameRate:I

    return-object p0
.end method

.method public setH263QcifPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 537
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h263QcifPayloadType:I

    return-object p0
.end method

.method public setH264720pLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 502
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264720pLPayloadType:I

    return-object p0
.end method

.method public setH264720pPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 497
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264720pPayloadType:I

    return-object p0
.end method

.method public setH264CifLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 532
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264CifLPayloadType:I

    return-object p0
.end method

.method public setH264CifPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 527
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264CifPayloadType:I

    return-object p0
.end method

.method public setH264QvgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 522
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264QvgaLPayloadType:I

    return-object p0
.end method

.method public setH264QvgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 517
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264QvgaPayloadType:I

    return-object p0
.end method

.method public setH264VgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 512
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264VgaLPayloadType:I

    return-object p0
.end method

.method public setH264VgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 507
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264VgaPayloadType:I

    return-object p0
.end method

.method public setH265Hd720pLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 492
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265Hd720pLPayloadType:I

    return-object p0
.end method

.method public setH265Hd720pPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 487
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265Hd720pPayloadType:I

    return-object p0
.end method

.method public setH265QvgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 472
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265QvgaLPayloadType:I

    return-object p0
.end method

.method public setH265QvgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 467
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265QvgaPayloadType:I

    return-object p0
.end method

.method public setH265VgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 482
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265VgaLPayloadType:I

    return-object p0
.end method

.method public setH265VgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 477
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265VgaPayloadType:I

    return-object p0
.end method

.method public setIgnoreRtcpTimeoutOnHoldCall(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 637
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->ignoreRtcpTimeoutOnHoldCall:Z

    return-object p0
.end method

.method public setMaxPTime(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 432
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->maxPTime:I

    return-object p0
.end method

.method public setPTime(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 427
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->pTime:I

    return-object p0
.end method

.method public setPacketizationMode(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->packetizationMode:Ljava/lang/String;

    return-object p0
.end method

.method public setRtcpTimeout(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 632
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->rtcpTimeout:I

    return-object p0
.end method

.method public setRtpTimeout(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 627
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->rtpTimeout:I

    return-object p0
.end method

.method public setT140PayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 597
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->t140PayloadType:I

    return-object p0
.end method

.method public setT140RedPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 602
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->t140RedPayloadType:I

    return-object p0
.end method

.method public setTextAs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 607
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textAs:I

    return-object p0
.end method

.method public setTextAvpf(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 582
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textAvpf:Z

    return-object p0
.end method

.method public setTextPort(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 622
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textPort:I

    return-object p0
.end method

.method public setTextRr(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 617
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textRr:I

    return-object p0
.end method

.method public setTextRs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 612
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textRs:I

    return-object p0
.end method

.method public setTextSrtp(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 587
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textSrtp:Z

    return-object p0
.end method

.method public setUseSpsForH264Hd(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 542
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->useSpsForH264Hd:Z

    return-object p0
.end method

.method public setVideoAs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 547
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoAs:I

    return-object p0
.end method

.method public setVideoAvpf(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 572
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoAvpf:Z

    return-object p0
.end method

.method public setVideoCapabilities(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 592
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoCapabilities:Z

    return-object p0
.end method

.method public setVideoCodec(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoCodec:Ljava/lang/String;

    return-object p0
.end method

.method public setVideoPort(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 442
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoPort:I

    return-object p0
.end method

.method public setVideoRr(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 557
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoRr:I

    return-object p0
.end method

.method public setVideoRs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 552
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoRs:I

    return-object p0
.end method

.method public setVideoRtcpXr(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 662
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoRtcpXr:Z

    return-object p0
.end method

.method public setVideoSrtp(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;
    .locals 0

    .line 577
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoSrtp:Z

    return-object p0
.end method
