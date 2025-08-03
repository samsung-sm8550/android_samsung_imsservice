.class public Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DialogAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DialogNotiReceiver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "phone_id"

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)I

    move-result p2

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    .line 147
    :cond_0
    const-string p1, "com.samsung.rcs.framework.dialogadapter.action.SHOW_TC_POPUP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmTcPopupFlag(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 148
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmTitle(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$misStringValid(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmMessage(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$misStringValid(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmAccept(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-static {p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$smshouldShowButton(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmReject(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$smshouldShowButton(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 150
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 152
    :cond_2
    const-string p1, "com.samsung.rcs.framework.dialogadapter.action.CANCEL_TC_NOTIFICATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 153
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fputmTcPopupFlag(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)V

    .line 154
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fputmRcsTcNotification(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)V

    .line 155
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmNotificationManager(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/app/NotificationManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)I

    move-result p0

    const p2, 0xa807ad

    add-int/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 156
    :cond_3
    const-string p1, "com.samsung.rcs.framework.dialogadapter.action.SHOW_MSISDN_POPUP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 157
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmNotificationManager(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/app/NotificationManager;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)I

    move-result p2

    const v0, 0x3636a01

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 158
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_0
    return-void
.end method
