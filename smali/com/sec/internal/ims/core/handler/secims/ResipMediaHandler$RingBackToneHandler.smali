.class Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;
.super Landroid/os/Handler;
.source "ResipMediaHandler.java"


# static fields
.field public static final MUTE_RINGBACK_TONE:I = 0x3

.field public static final START_RINGBACK_TONE:I = 0x1

.field public static final STOP_RINGBACK_TONE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RBTHandler"


# instance fields
.field private mStreamType:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneType:I

.field private mVolume:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1150
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 1146
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    return-void
.end method

.method private declared-synchronized muteRingBackTone()V
    .locals 2

    monitor-enter p0

    .line 1190
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1191
    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->semSetVolume(F)V

    const/4 v0, 0x0

    .line 1192
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1194
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startRingBackTone(Landroid/os/Bundle;)V
    .locals 3

    monitor-enter p0

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 1155
    :try_start_0
    const-string/jumbo v1, "streamType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mStreamType:I

    .line 1156
    const-string/jumbo v1, "volume"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I

    .line 1157
    const-string/jumbo v1, "toneType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneType:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1160
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz p1, :cond_1

    .line 1161
    const-string p1, "RBTHandler"

    const-string/jumbo v1, "stop existing tone before starting new tone"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {p1}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1163
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {p1}, Landroid/media/ToneGenerator;->release()V

    .line 1166
    :cond_1
    const-string p1, "RBTHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start RBT with st"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " v-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tt-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez p1, :cond_2

    iget p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mStreamType:I

    if-eq p1, v0, :cond_2

    iget p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I

    if-eq p1, v0, :cond_2

    .line 1169
    new-instance p1, Landroid/media/ToneGenerator;

    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mStreamType:I

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I

    invoke-direct {p1, v0, v1}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 1172
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz p1, :cond_3

    .line 1173
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneType:I

    invoke-virtual {p1, v0}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized stopRingBackTone()V
    .locals 2

    monitor-enter p0

    .line 1178
    :try_start_0
    const-string v0, "RBTHandler"

    const-string v1, "Stop RBT!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 1180
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1181
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 1184
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    const/4 v0, -0x1

    .line 1185
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mStreamType:I

    .line 1186
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1187
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1203
    const-string v0, "RBTHandler"

    if-nez p1, :cond_0

    .line 1204
    const-string p0, "Invalid Message"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1208
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 p1, 0x2

    if-eq v1, p1, :cond_2

    const/4 p1, 0x3

    if-eq v1, p1, :cond_1

    .line 1221
    const-string p0, "Invalid event"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1218
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->muteRingBackTone()V

    goto :goto_0

    .line 1215
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->stopRingBackTone()V

    goto :goto_0

    .line 1212
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->startRingBackTone(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized isPlayingRingBackTone()Z
    .locals 1

    monitor-enter p0

    .line 1198
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    throw v0
.end method
