.class public Lcom/sec/internal/constants/ims/SipErrorSwa;
.super Lcom/sec/internal/constants/ims/SipErrorBase;
.source "SipErrorSwa.java"


# static fields
.field public static final AKA_CHANLENGE_TIMEOUT:Lcom/sec/ims/util/SipError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/sec/ims/util/SipError;

    const/16 v1, 0x3eb

    const-string v2, "Aka challenge timeout"

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorSwa;->AKA_CHANLENGE_TIMEOUT:Lcom/sec/ims/util/SipError;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorBase;-><init>()V

    return-void
.end method
