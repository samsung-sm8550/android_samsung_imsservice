.class Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync$1;
.super Lcom/sec/ims/ICentralMsgStoreServiceListener$Stub;
.source "McsContactSync.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    invoke-direct {p0}, Lcom/sec/ims/ICentralMsgStoreServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCmsAccountInfoDelivered(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onCmsDeRegistrationCompleted(I)V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCmsDeRegistrationCompleted: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 85
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onCmsDeRegistrationCompletedWithDetails(II)V
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync$1;->onCmsDeRegistrationCompleted(I)V

    return-void
.end method

.method public onCmsPushMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onCmsRegistrationCompleted(II)V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCmsRegistrationCompleted: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    .line 77
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onCmsSdChanged(ZLjava/lang/String;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onCmsSdManagementCompleted(ILjava/lang/String;II)V
    .locals 0

    .line 0
    return-void
.end method
