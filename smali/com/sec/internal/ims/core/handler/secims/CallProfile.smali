.class public Lcom/sec/internal/ims/core/handler/secims/CallProfile;
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
.method public constructor <init>(Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioCodec:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioCodec:Ljava/lang/String;

    .line 127
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioPort:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioPort:I

    .line 128
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioDscp:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioDscp:I

    .line 129
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrPayloadType:I

    .line 130
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrOaPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrOaPayloadType:I

    .line 131
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrWbPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrWbPayloadType:I

    .line 132
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrWbOaPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrWbOaPayloadType:I

    .line 133
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrOpenPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrOpenPayloadType:I

    .line 134
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->dtmfPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->dtmfPayloadType:I

    .line 135
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->dtmfWbPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->dtmfWbPayloadType:I

    .line 136
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrOaMaxRed:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrOaMaxRed:I

    .line 137
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrBeMaxRed:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrBeMaxRed:I

    .line 138
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrOaWbMaxRed:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrOaWbMaxRed:I

    .line 139
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrBeWbMaxRed:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrBeWbMaxRed:I

    .line 140
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsMaxRed:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsMaxRed:I

    .line 141
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrMode:Ljava/lang/String;

    .line 142
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->amrWbMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrWbMode:Ljava/lang/String;

    .line 143
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioAs:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioAs:I

    .line 144
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioRs:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioRs:I

    .line 145
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioRr:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioRr:I

    .line 146
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->pTime:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->pTime:I

    .line 147
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->maxPTime:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->maxPTime:I

    .line 148
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoCodec:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoCodec:Ljava/lang/String;

    .line 149
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoPort:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoPort:I

    .line 150
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->frameRate:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->frameRate:I

    .line 151
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->displayFormat:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->displayFormat:Ljava/lang/String;

    .line 152
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->displayFormatHevc:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->displayFormatHevc:Ljava/lang/String;

    .line 153
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->packetizationMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->packetizationMode:Ljava/lang/String;

    .line 154
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265QvgaPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h265QvgaPayloadType:I

    .line 155
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265QvgaLPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h265QvgaLPayloadType:I

    .line 156
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265VgaPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h265VgaPayloadType:I

    .line 157
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265VgaLPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h265VgaLPayloadType:I

    .line 158
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265Hd720pPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h265Hd720pPayloadType:I

    .line 159
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h265Hd720pLPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h265Hd720pLPayloadType:I

    .line 160
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264720pPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264720pPayloadType:I

    .line 161
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264720pLPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264720pLPayloadType:I

    .line 162
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264VgaPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264VgaPayloadType:I

    .line 163
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264VgaLPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264VgaLPayloadType:I

    .line 164
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264QvgaPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264QvgaPayloadType:I

    .line 165
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264QvgaLPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264QvgaLPayloadType:I

    .line 166
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264CifPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264CifPayloadType:I

    .line 167
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h264CifLPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264CifLPayloadType:I

    .line 168
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->h263QcifPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h263QcifPayloadType:I

    .line 169
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->useSpsForH264Hd:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->useSpsForH264Hd:Z

    .line 170
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoAs:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoAs:I

    .line 171
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoRs:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoRs:I

    .line 172
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoRr:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoRr:I

    .line 173
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->t140PayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->t140PayloadType:I

    .line 174
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->t140RedPayloadType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->t140RedPayloadType:I

    .line 175
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textAs:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->textAs:I

    .line 176
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textRs:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->textRs:I

    .line 177
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textRr:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->textRr:I

    .line 178
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textPort:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->textPort:I

    .line 179
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioAvpf:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioAvpf:Z

    .line 180
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioSrtp:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioSrtp:Z

    .line 181
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoAvpf:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoAvpf:Z

    .line 182
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoSrtp:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoSrtp:Z

    .line 183
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textAvpf:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->textAvpf:Z

    .line 184
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->textSrtp:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->textSrtp:Z

    .line 185
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoCapabilities:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoCapabilities:Z

    .line 186
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->rtpTimeout:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->rtpTimeout:I

    .line 187
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->rtcpTimeout:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->rtcpTimeout:I

    .line 188
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->ignoreRtcpTimeoutOnHoldCall:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->ignoreRtcpTimeoutOnHoldCall:Z

    .line 189
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->enableRtcpOnActiveCall:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->enableRtcpOnActiveCall:Z

    .line 190
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->enableAvSync:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->enableAvSync:Z

    .line 191
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->enableScr:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->enableScr:Z

    .line 192
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->audioRtcpXr:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioRtcpXr:Z

    .line 193
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->videoRtcpXr:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoRtcpXr:Z

    .line 194
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->dtmfMode:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->dtmfMode:I

    .line 196
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->enableEvsCodec:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->enableEvsCodec:Z

    .line 197
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsDiscontinuousTransmission:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsDiscontinuousTransmission:Ljava/lang/String;

    .line 198
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsDtxRecv:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsDtxRecv:Ljava/lang/String;

    .line 199
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsHeaderFull:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsHeaderFull:Ljava/lang/String;

    .line 200
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsModeSwitch:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsModeSwitch:Ljava/lang/String;

    .line 201
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsChannelSend:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsChannelSend:Ljava/lang/String;

    .line 202
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsChannelRecv:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsChannelRecv:Ljava/lang/String;

    .line 203
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsChannelAwareReceive:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsChannelAwareReceive:Ljava/lang/String;

    .line 204
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsCodecModeRequest:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsCodecModeRequest:Ljava/lang/String;

    .line 205
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBitRateSend:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBitRateSend:Ljava/lang/String;

    .line 206
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBitRateReceive:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBitRateReceive:Ljava/lang/String;

    .line 207
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBandwidthSend:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBandwidthSend:Ljava/lang/String;

    .line 208
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBandwidthReceive:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBandwidthReceive:Ljava/lang/String;

    .line 209
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsPayload:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsPayload:I

    .line 210
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evs2ndPayload:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evs2ndPayload:I

    .line 211
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsDefaultBandwidth:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsDefaultBandwidth:Ljava/lang/String;

    .line 212
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsDefaultBitrate:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsDefaultBitrate:Ljava/lang/String;

    .line 213
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsPayloadExt:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsPayloadExt:I

    .line 214
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBitRateSendExt:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBitRateSendExt:Ljava/lang/String;

    .line 215
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBitRateReceiveExt:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBitRateReceiveExt:Ljava/lang/String;

    .line 216
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBandwidthSendExt:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBandwidthSendExt:Ljava/lang/String;

    .line 217
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsBandwidthReceiveExt:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBandwidthReceiveExt:Ljava/lang/String;

    .line 218
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsLimitedCodec:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsLimitedCodec:Ljava/lang/String;

    .line 219
    iget-boolean p1, p1, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->evsUseDefaultRtcpBw:Z

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsUseDefaultRtcpBw:Z

    return-void
.end method
