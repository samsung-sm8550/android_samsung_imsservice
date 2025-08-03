.class Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService$1;
.super Ljava/lang/Object;
.source "FcmIntentService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;

.field final synthetic val$phoneId:I

.field final synthetic val$senderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService$1;->this$0:Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;

    iput p2, p0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService$1;->val$phoneId:I

    iput-object p3, p0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService$1;->val$senderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetching FCM registration token failed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object p1, p0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService$1;->this$0:Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;

    iget p0, p0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService$1;->val$phoneId:I

    const/4 v0, 0x0

    const-string v1, "fcm token not ready"

    invoke-static {p1, p0, v0, v1}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->-$$Nest$mupdateFcmToken(Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService$1;->val$senderId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService$1;->val$phoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->s(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService$1;->this$0:Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;

    iget p0, p0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService$1;->val$phoneId:I

    const-string v1, "fcm token ready"

    invoke-static {v0, p0, p1, v1}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->-$$Nest$mupdateFcmToken(Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
