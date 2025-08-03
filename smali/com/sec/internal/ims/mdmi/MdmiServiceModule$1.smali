.class Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;
.super Ljava/lang/Object;
.source "MdmiServiceModule.java"

# interfaces
.implements Lcom/sec/internal/ims/mdmi/MdmiE911Listener;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifySipMsg(Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;J)V
    .locals 6

    .line 59
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-wide/16 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 88
    :pswitch_0
    iget-object p0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmNumberOfE911reg(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fputmNumberOfE911reg(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;J)V

    goto/16 :goto_0

    .line 85
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmNumberofSipBye(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fputmNumberofSipBye(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;J)V

    goto/16 :goto_0

    .line 82
    :pswitch_2
    iget-object p0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmNumberOfSipCancel(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fputmNumberOfSipCancel(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;J)V

    goto :goto_0

    .line 70
    :pswitch_3
    iget-object p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fputm200OkRecvTime(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;J)V

    .line 71
    iget-object p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {p1}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetm200OkRecvTime(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide p1

    iget-object p3, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {p3}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmInviteSendingTime(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide v2

    sub-long/2addr p1, v2

    .line 72
    iget-object p3, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {p3}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetminTimeDiffBetweenInviteAndOk(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {p3, v2, v3}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fputminTimeDiffBetweenInviteAndOk(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;J)V

    .line 73
    iget-object p3, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {p3}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmaxTimeDiffBetweenInviteAndOk(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {p3, v2, v3}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fputmaxTimeDiffBetweenInviteAndOk(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;J)V

    .line 74
    iget-object p3, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {p3}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmMeanvalue(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)D

    move-result-wide v2

    .line 77
    iget-object p3, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {p3}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmNumberOfCalls(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v4, v2

    long-to-double p1, p1

    add-double/2addr v4, p1

    iget-object p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {p1}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmNumberOfCalls(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide p1

    add-long/2addr p1, v0

    long-to-double p1, p1

    div-double/2addr v4, p1

    invoke-static {p3, v4, v5}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fputmMeanvalue(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;D)V

    .line 78
    iget-object p0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmNumberOfCalls(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fputmNumberOfCalls(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;J)V

    goto :goto_0

    .line 67
    :pswitch_4
    iget-object p0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {p0, p2, p3}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fputmInviteSendingTime(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;J)V

    goto :goto_0

    .line 64
    :pswitch_5
    iget-object p0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmNumberOfE922Calls(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fputmNumberOfE922Calls(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;J)V

    goto :goto_0

    .line 61
    :pswitch_6
    iget-object p0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmNumberOfE911Calls(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fputmNumberOfE911Calls(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;J)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCallEnded()V
    .locals 19

    move-object/from16 v0, p0

    .line 99
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nE911reg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {v3}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmNumberOfE911reg(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " nE911Calls = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {v3}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmNumberOfE911Calls(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "nE922Calls = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {v3}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmNumberOfE922Calls(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " nSipCancel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {v3}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmNumberOfSipCancel(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " nSipBye = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {v3}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmNumberofSipBye(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " minTimeDiffBetweenInviteAndOk = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {v3}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetminTimeDiffBetweenInviteAndOk(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " maxTimeDiffBetweenInviteAndOk = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {v3}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmaxTimeDiffBetweenInviteAndOk(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mMeanvalue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {v3}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmMeanvalue(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    iget-object v2, v1, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mMdmiEventListener:Lcom/sec/ims/mdmi/IMdmiEventListener;

    if-eqz v2, :cond_0

    .line 103
    invoke-static {v1}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmNumberOfE911reg(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide v3

    iget-object v1, v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {v1}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmNumberOfE911Calls(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide v5

    iget-object v1, v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {v1}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmNumberOfE922Calls(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide v7

    iget-object v1, v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {v1}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmNumberOfSipCancel(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide v9

    iget-object v1, v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {v1}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmNumberofSipBye(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide v11

    iget-object v1, v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {v1}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetminTimeDiffBetweenInviteAndOk(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide v13

    long-to-double v13, v13

    iget-object v1, v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    move-wide v15, v13

    invoke-static {v1}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmaxTimeDiffBetweenInviteAndOk(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J

    move-result-wide v13

    long-to-double v13, v13

    iget-object v0, v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;->this$0:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$fgetmMeanvalue(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)D

    move-result-wide v17

    move-wide v0, v13

    move-wide v13, v15

    move-wide v15, v0

    invoke-interface/range {v2 .. v18}, Lcom/sec/ims/mdmi/IMdmiEventListener;->onE911StatsUpdated(JJJJJDDD)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MDMI event listener is null"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 109
    :goto_0
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method
