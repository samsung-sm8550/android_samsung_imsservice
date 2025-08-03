.class public Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;
.super Ljava/lang/Object;
.source "SrvDnsResolver.java"


# instance fields
.field public final mInetAddress:Ljava/net/InetAddress;

.field public final mPort:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;->mInetAddress:Ljava/net/InetAddress;

    .line 70
    iput p2, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;->mPort:I

    return-void
.end method
