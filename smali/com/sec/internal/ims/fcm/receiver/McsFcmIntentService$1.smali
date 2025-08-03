.class Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService$1;
.super Ljava/lang/Object;
.source "McsFcmIntentService.java"

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
.field final synthetic this$0:Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;

.field final synthetic val$isFcmRegistrationTokenRefreshed:Z

.field final synthetic val$phoneId:I

.field final synthetic val$senderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService$1;->this$0:Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;

    iput p2, p0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService$1;->val$phoneId:I

    iput-object p3, p0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService$1;->val$senderId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService$1;->val$isFcmRegistrationTokenRefreshed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService$1;->val$phoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching FCM registration token failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService$1;->this$0:Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;

    iget v0, p0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService$1;->val$phoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService$1;->val$senderId:Ljava/lang/String;

    const/4 v2, 0x0

    iget-boolean p0, p0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService$1;->val$isFcmRegistrationTokenRefreshed:Z

    invoke-static {p1, v0, v1, v2, p0}, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->-$$Nest$msendFcmRegistrationToken(Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHandleIntent: fcmRegistrationToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService$1;->this$0:Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;

    iget v1, p0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService$1;->val$phoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService$1;->val$senderId:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService$1;->val$isFcmRegistrationTokenRefreshed:Z

    invoke-static {v0, v1, v2, p1, p0}, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->-$$Nest$msendFcmRegistrationToken(Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
