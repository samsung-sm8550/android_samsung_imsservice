.class public Lcom/sec/internal/helper/httpclient/OkHostnameVerifierWrapper;
.super Ljava/lang/Object;
.source "OkHostnameVerifierWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 2

    const-class v0, Lcom/sec/internal/helper/httpclient/OkHostnameVerifierWrapper;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    invoke-virtual {v1, p0, p1}, Lokhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
