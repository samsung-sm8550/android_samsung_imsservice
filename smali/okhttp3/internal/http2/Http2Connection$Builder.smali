.class public final Lokhttp3/internal/http2/Http2Connection$Builder;
.super Ljava/lang/Object;
.source "Http2Connection.kt"


# instance fields
.field private client:Z

.field public connectionName:Ljava/lang/String;

.field private listener:Lokhttp3/internal/http2/Http2Connection$Listener;

.field private pingIntervalMillis:I

.field private pushObserver:Lokhttp3/internal/http2/PushObserver;

.field public sink:Lokio/BufferedSink;

.field public socket:Ljava/net/Socket;

.field public source:Lokio/BufferedSource;

.field private final taskRunner:Lokhttp3/internal/concurrent/TaskRunner;


# direct methods
.method public constructor <init>(ZLokhttp3/internal/concurrent/TaskRunner;)V
    .locals 1

    const-string/jumbo v0, "taskRunner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput-boolean p1, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    .line 562
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    .line 568
    sget-object p1, Lokhttp3/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Lokhttp3/internal/http2/Http2Connection$Listener;

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 569
    sget-object p1, Lokhttp3/internal/http2/PushObserver;->CANCEL:Lokhttp3/internal/http2/PushObserver;

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    return-void
.end method


# virtual methods
.method public final build()Lokhttp3/internal/http2/Http2Connection;
    .locals 1

    .line 601
    new-instance v0, Lokhttp3/internal/http2/Http2Connection;

    invoke-direct {v0, p0}, Lokhttp3/internal/http2/Http2Connection;-><init>(Lokhttp3/internal/http2/Http2Connection$Builder;)V

    return-object v0
.end method

.method public final getClient$okhttp()Z
    .locals 0

    .line 561
    iget-boolean p0, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    return p0
.end method

.method public final getConnectionName$okhttp()Ljava/lang/String;
    .locals 0

    .line 565
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->connectionName:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "connectionName"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getListener$okhttp()Lokhttp3/internal/http2/Http2Connection$Listener;
    .locals 0

    .line 568
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    return-object p0
.end method

.method public final getPingIntervalMillis$okhttp()I
    .locals 0

    .line 570
    iget p0, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    return p0
.end method

.method public final getPushObserver$okhttp()Lokhttp3/internal/http2/PushObserver;
    .locals 0

    .line 569
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    return-object p0
.end method

.method public final getSink$okhttp()Lokio/BufferedSink;
    .locals 0

    .line 567
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->sink:Lokio/BufferedSink;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "sink"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSocket$okhttp()Ljava/net/Socket;
    .locals 0

    .line 564
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "socket"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSource$okhttp()Lokio/BufferedSource;
    .locals 0

    .line 566
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->source:Lokio/BufferedSource;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "source"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTaskRunner$okhttp()Lokhttp3/internal/concurrent/TaskRunner;
    .locals 0

    .line 562
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    return-object p0
.end method

.method public final listener(Lokhttp3/internal/http2/Http2Connection$Listener;)Lokhttp3/internal/http2/Http2Connection$Builder;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->setListener$okhttp(Lokhttp3/internal/http2/Http2Connection$Listener;)V

    return-object p0
.end method

.method public final pingIntervalMillis(I)Lokhttp3/internal/http2/Http2Connection$Builder;
    .locals 0

    .line 597
    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->setPingIntervalMillis$okhttp(I)V

    return-object p0
.end method

.method public final setConnectionName$okhttp(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->connectionName:Ljava/lang/String;

    return-void
.end method

.method public final setListener$okhttp(Lokhttp3/internal/http2/Http2Connection$Listener;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    return-void
.end method

.method public final setPingIntervalMillis$okhttp(I)V
    .locals 0

    .line 570
    iput p1, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    return-void
.end method

.method public final setSink$okhttp(Lokio/BufferedSink;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->sink:Lokio/BufferedSink;

    return-void
.end method

.method public final setSocket$okhttp(Ljava/net/Socket;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    return-void
.end method

.method public final setSource$okhttp(Lokio/BufferedSource;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$Builder;->source:Lokio/BufferedSource;

    return-void
.end method

.method public final socket(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lokhttp3/internal/http2/Http2Connection$Builder;
    .locals 1

    const-string/jumbo v0, "socket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "peerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sink"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->setSocket$okhttp(Ljava/net/Socket;)V

    .line 581
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Connection$Builder;->getClient$okhttp()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lokhttp3/internal/Util;->okHttpName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 582
    :cond_0
    const-string p1, "MockWebServer "

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 580
    :goto_0
    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->setConnectionName$okhttp(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0, p3}, Lokhttp3/internal/http2/Http2Connection$Builder;->setSource$okhttp(Lokio/BufferedSource;)V

    .line 585
    invoke-virtual {p0, p4}, Lokhttp3/internal/http2/Http2Connection$Builder;->setSink$okhttp(Lokio/BufferedSink;)V

    return-object p0
.end method
