.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceEvent;
.super Ljava/lang/Object;
.source "PresenceEvent.java"


# static fields
.field static final EVT_BAD_EVENT_TIMEOUT:I = 0xe

.field public static final EVT_DEFAULT_MSG_APP_CHANGED:I = 0x13

.field public static final EVT_NEW_NOTIFY_INFO:I = 0x10

.field public static final EVT_NEW_NOTIFY_STATUS:I = 0x11

.field public static final EVT_NEW_PRESENCE_INFO:I = 0xa

.field static final EVT_NEW_PRESENCE_INFO_DELAYED:I = 0xb

.field static final EVT_PERIODIC_PUBLISH:I = 0x4

.field public static final EVT_PUBLISH_CAPABILITIES:I = 0xf

.field public static final EVT_PUBLISH_COMPLETE:I = 0x2

.field public static final EVT_PUBLISH_REQUEST:I = 0x1

.field static final EVT_RETRY_PUBLISH_TIMEOUT:I = 0x12

.field public static final EVT_SUBSCRIBE_COMPLETE:I = 0x6

.field static final EVT_SUBSCRIBE_LIST_REQUESTED:I = 0x7

.field static final EVT_SUBSCRIBE_REQUESTED:I = 0x5

.field static final EVT_SUBSCRIBE_RETRY:I = 0x8

.field static final EVT_SUBSCRIPTION_TERMINATED:I = 0x9

.field static final EVT_UNPUBLISH_REQUEST:I = 0x3

.field static final EVT_WAKE_LOCK_TIMEOUT:I = 0xd

.field private static final LOG_TAG:Ljava/lang/String; = "PresenceEvent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handleEvent(Landroid/os/Message;Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;I)Z
    .locals 1

    .line 37
    iget p3, p0, Landroid/os/Message;->what:I

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    .line 131
    :pswitch_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onDefaultSmsPackageChanged()V

    goto/16 :goto_0

    .line 126
    :pswitch_2
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 127
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onRetryPublishTimeout(I)V

    goto/16 :goto_0

    .line 120
    :pswitch_3
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 121
    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    .line 122
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getPhoneId()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onNewNotifyStatus(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;I)V

    goto/16 :goto_0

    .line 114
    :pswitch_4
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 115
    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;

    .line 116
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getPhoneId()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onNewNotifyInfo(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;I)V

    goto/16 :goto_0

    .line 109
    :pswitch_5
    iget p2, p0, Landroid/os/Message;->arg1:I

    .line 110
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object p3

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p3, p2, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->publish(Lcom/sec/ims/presence/PresenceInfo;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :pswitch_6
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 90
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onBadEventTimeout(I)V

    goto/16 :goto_0

    .line 101
    :pswitch_7
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->clearWakeLock()Z

    goto/16 :goto_0

    .line 94
    :pswitch_8
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/presence/PresenceInfo;

    .line 95
    iget p0, p0, Landroid/os/Message;->arg1:I

    .line 97
    invoke-virtual {p1}, Lcom/sec/ims/presence/PresenceInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object p3

    .line 96
    invoke-virtual {p2, p1, p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->onNewPresenceInformation(Lcom/sec/ims/presence/PresenceInfo;ILcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    goto/16 :goto_0

    .line 77
    :pswitch_9
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 78
    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/sec/ims/presence/PresenceInfo;

    .line 79
    invoke-virtual {p0}, Lcom/sec/ims/presence/PresenceInfo;->getPhoneId()I

    move-result p1

    .line 80
    invoke-virtual {p0}, Lcom/sec/ims/presence/PresenceInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/sec/ims/presence/PresenceInfo;->getPhoneId()I

    move-result v0

    invoke-static {p3, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object p3

    .line 79
    invoke-virtual {p2, p0, p1, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->onNewPresenceInformation(Lcom/sec/ims/presence/PresenceInfo;ILcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    goto :goto_0

    .line 105
    :pswitch_a
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onSubscriptionTerminated(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    goto :goto_0

    .line 60
    :pswitch_b
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onSubscribeRetry(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    goto :goto_0

    .line 54
    :pswitch_c
    iget p2, p0, Landroid/os/Message;->arg1:I

    .line 55
    iget-object p3, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p3, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, p3, p2, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onSubscribeListRequested(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;II)V

    goto :goto_0

    .line 64
    :pswitch_d
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 65
    iget-object p2, p0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onSubscribeComplete(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V

    goto :goto_0

    .line 50
    :pswitch_e
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onSubscribeRequested(Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;)V

    goto :goto_0

    .line 45
    :pswitch_f
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 46
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPeriodicPublish(I)V

    goto :goto_0

    .line 84
    :pswitch_10
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 85
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->unpublish(I)V

    goto :goto_0

    .line 69
    :pswitch_11
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 70
    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    .line 71
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getPhoneId()I

    move-result p2

    .line 72
    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishComplete(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;I)V

    goto :goto_0

    .line 40
    :pswitch_12
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 41
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->publish(Lcom/sec/ims/presence/PresenceInfo;I)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
