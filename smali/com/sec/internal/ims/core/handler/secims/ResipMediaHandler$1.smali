.class Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;
.super Lcom/sec/sve/IImsMediaEventListener$Stub;
.source "ResipMediaHandler.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-direct {p0}, Lcom/sec/sve/IImsMediaEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioInjectionEnded(JJ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAudioRtpRtcpTimeout(II)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$000(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAudioRtpRtcpTimeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 126
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setChannelId(I)V

    .line 127
    div-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 128
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setAudioEvent(I)V

    .line 130
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$100(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onDtmfEvent(II)V
    .locals 2

    .line 321
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1200(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDtmfEvent dtmfKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    const/4 v0, 0x0

    .line 323
    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setDtmfEvent(I)V

    .line 324
    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setDtmfKey(I)V

    .line 325
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1300(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onRecordEvent(II)V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1400(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRecordEvent errCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 332
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 334
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_NO_SPACE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 336
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 338
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1500(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onRecordingStopped(JJLjava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onRtpLossRate(IIFFI)V
    .locals 1

    .line 135
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 136
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setChannelId(I)V

    .line 137
    div-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    const/16 p1, 0x4e

    .line 138
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setAudioEvent(I)V

    .line 140
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;-><init>(IFFI)V

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setRtpLossRate(Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V

    .line 142
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$200(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onRtpStats(IIIIII)V
    .locals 9

    .line 147
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 148
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setChannelId(I)V

    .line 149
    div-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    const/16 v1, 0x20

    .line 150
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setAudioEvent(I)V

    .line 152
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    move-object v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;-><init>(IIIIII)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setAudioRtpStats(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V

    .line 154
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$300(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onTextReceive(IILjava/lang/String;II)V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$800(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTextReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 298
    invoke-virtual {v0, p5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setTextEvent(I)V

    .line 299
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setChannelId(I)V

    .line 300
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 301
    div-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 302
    invoke-virtual {v0, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setRttText(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, p4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setRttTextLen(I)V

    .line 305
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$900(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onTextRtpRtcpTimeout(II)V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1000(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTextRtpRtcpTimeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 312
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setTextEvent(I)V

    .line 313
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setChannelId(I)V

    .line 314
    div-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 316
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1100(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onVideoEvent(IIIII)V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$400(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " session id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 162
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$500(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid Video Event"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 p1, 0x3ef

    if-lt p3, p1, :cond_1

    .line 168
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$600(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Ignore PTT Video Event in legacy VoLTE"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 172
    :cond_1
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 173
    invoke-virtual {p1, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    const/16 p3, 0x75

    if-eq p2, p3, :cond_2

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    packed-switch p2, :pswitch_data_4

    goto/16 :goto_0

    .line 287
    :pswitch_0
    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->GENERAL_EVENT_IDC_ARCALL_STOP:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 288
    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setGeneralEvent(I)V

    goto/16 :goto_0

    .line 283
    :pswitch_1
    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->GENERAL_EVENT_IDC_ARCALL_START:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 284
    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setGeneralEvent(I)V

    goto/16 :goto_0

    .line 279
    :pswitch_2
    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->GENERAL_EVENT_IDC_SCREEN_SHARE_STOP:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 280
    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setGeneralEvent(I)V

    goto/16 :goto_0

    .line 275
    :pswitch_3
    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->GENERAL_EVENT_IDC_SCREEN_SHARE_START:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 276
    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setGeneralEvent(I)V

    goto/16 :goto_0

    .line 271
    :pswitch_4
    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->GENERAL_EVENT_VCID_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 272
    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setGeneralEvent(I)V

    goto/16 :goto_0

    .line 268
    :pswitch_5
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_INFO_CHANGE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 265
    :pswitch_6
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_STOP_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 262
    :pswitch_7
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 259
    :pswitch_8
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 256
    :pswitch_9
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 212
    :pswitch_a
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_MAX_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 209
    :pswitch_b
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_VERYPOOR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 206
    :pswitch_c
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_GOOD_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 203
    :pswitch_d
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_FAIR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 200
    :pswitch_e
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_POOR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 190
    :pswitch_f
    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_RTCP_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 191
    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setVideoEvent(I)V

    goto/16 :goto_0

    .line 186
    :pswitch_10
    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_RTP_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 187
    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setVideoEvent(I)V

    goto/16 :goto_0

    .line 251
    :pswitch_11
    invoke-virtual {p1, p4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setWidth(I)V

    .line 252
    invoke-virtual {p1, p5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setHeight(I)V

    .line 253
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_CAPABILITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 183
    :pswitch_12
    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setVideoEvent(I)V

    goto :goto_0

    .line 247
    :pswitch_13
    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_DISABLED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 248
    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setVideoEvent(I)V

    goto :goto_0

    .line 242
    :pswitch_14
    invoke-virtual {p1, p4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setWidth(I)V

    .line 243
    invoke-virtual {p1, p5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setHeight(I)V

    .line 244
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CHANGE_PEER_DIMENSION:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 234
    :pswitch_15
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->NO_FAR_FRAME:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 197
    :pswitch_16
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_SWITCH_FAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 194
    :pswitch_17
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_SWITCH_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 221
    :pswitch_18
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 177
    :pswitch_19
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_FIRST_FRAME_READY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 215
    :pswitch_1a
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_FAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 218
    :pswitch_1b
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 180
    :pswitch_1c
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 231
    :pswitch_1d
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAPTURE_FAILED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 226
    :pswitch_1e
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAPTURE_SUCCEEDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 239
    :cond_2
    :pswitch_1f
    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setVideoEvent(I)V

    .line 291
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$700(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_1e
        :pswitch_1d
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_10
        :pswitch_f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x46
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x5a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
