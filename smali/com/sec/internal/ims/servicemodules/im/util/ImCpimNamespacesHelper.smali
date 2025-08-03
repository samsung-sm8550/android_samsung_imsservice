.class public Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;
.super Ljava/lang/Object;
.source "ImCpimNamespacesHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractGsmaRcsReferenceId(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 69
    const-string/jumbo v0, "rcs"

    const-string v1, "Reference-ID"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getFirstHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static extractGsmaRcsReferenceType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 76
    const-string/jumbo v0, "rcs"

    const-string v1, "Reference-Type"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getFirstHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .locals 3

    .line 13
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-eqz p1, :cond_0

    .line 16
    const-string v1, "MD"

    const-string v2, "direction"

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getFirstHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 19
    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->convertToImDirection(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 34
    const-string v0, "maap"

    const-string v1, "Traffic-Type"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getFirstHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static extractTtaExtendedRcsReferenceId(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 41
    const-string v0, "Extended-RCS"

    const-string v1, "Reference-ID"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getFirstHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static extractTtaExtendedRcsReferenceType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 48
    const-string v0, "Extended-RCS"

    const-string v1, "Reference-Type"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getFirstHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static extractTtaExtendedRcsReferenceValue(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 55
    const-string v0, "Extended-RCS"

    const-string v1, "Reference-Value"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getFirstHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static extractTtaExtendedRcsTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 62
    const-string v0, "Extended-RCS"

    const-string v1, "Traffic-Type"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getFirstHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
