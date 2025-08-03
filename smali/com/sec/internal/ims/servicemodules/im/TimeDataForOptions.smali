.class public Lcom/sec/internal/ims/servicemodules/im/TimeDataForOptions;
.super Ljava/lang/Object;
.source "TimeDataForOptions.java"


# instance fields
.field time:Ljava/lang/Long;

.field uri:Lcom/sec/ims/util/ImsUri;


# direct methods
.method public constructor <init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/Long;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/TimeDataForOptions;->uri:Lcom/sec/ims/util/ImsUri;

    .line 11
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/TimeDataForOptions;->time:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getTime()Ljava/lang/Long;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/TimeDataForOptions;->time:Ljava/lang/Long;

    return-object p0
.end method

.method public getUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/TimeDataForOptions;->uri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method
