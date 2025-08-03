.class public Lcom/sec/internal/ims/gba/GbaException;
.super Ljava/lang/Exception;
.source "GbaException.java"


# static fields
.field public static final GBA_FAILURE_REASON_END:I = 0x63

.field public static final GBA_FAILURE_REASON_FEATURE_NOT_READY:I = 0x2

.field public static final GBA_FAILURE_REASON_FEATURE_NOT_SUPPORTED:I = 0x1

.field public static final GBA_FAILURE_REASON_INCORRECT_NAF_ID:I = 0x4

.field public static final GBA_FAILURE_REASON_NETWORK_FAILURE:I = 0x3

.field public static final GBA_FAILURE_REASON_SECURITY_PROTOCOL_NOT_SUPPORTED:I = 0x5

.field public static final GBA_FAILURE_REASON_UNKNOWN:I


# instance fields
.field private mCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/sec/internal/ims/gba/GbaException;->mCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 24
    iput p2, p0, Lcom/sec/internal/ims/gba/GbaException;->mCode:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/sec/internal/ims/gba/GbaException;->mCode:I

    return p0
.end method
