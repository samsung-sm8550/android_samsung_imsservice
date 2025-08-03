.class Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;
.super Ljava/lang/Object;
.source "ImsDiagnosticMonitorNotificationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

.field final synthetic val$direction:I

.field final synthetic val$hexContents:Ljava/lang/String;

.field final synthetic val$localIp:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$msgType:I

.field final synthetic val$notifyType:I

.field final synthetic val$phoneId:I

.field final synthetic val$remoteIp:Ljava/lang/String;

.field final synthetic val$timestamp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    iput p2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;->val$notifyType:I

    iput p3, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;->val$msgType:I

    iput p4, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;->val$direction:I

    iput p5, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;->val$phoneId:I

    iput-object p6, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;->val$timestamp:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;->val$localIp:Ljava/lang/String;

    iput-object p8, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;->val$remoteIp:Ljava/lang/String;

    iput-object p9, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;->val$message:Ljava/lang/String;

    iput-object p10, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;->val$hexContents:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 183
    iget v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;->val$notifyType:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 187
    const-string/jumbo v1, "notifyType"

    iget v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;->val$notifyType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    const-string v1, "msgType"

    iget v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;->val$msgType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    const-string v1, "direction"

    iget v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;->val$direction:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    const-string/jumbo v1, "phoneId"

    iget v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;->val$phoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    const-string/jumbo v1, "timestamp"

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;->val$timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v1, "localIp"

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;->val$localIp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string/jumbo v1, "remoteIp"

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;->val$remoteIp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "message"

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;->val$hexContents:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;->val$hexContents:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 197
    const-string v2, "hexcontents"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 199
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->send(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
