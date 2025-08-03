.class public final Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;
.super Ljava/lang/Object;
.source "XmlDataStructureWrapper.java"


# static fields
.field private static final CAP_AVAILABLE:Ljava/lang/String; = "true"

.field private static final CAP_SUPPORTED:Ljava/lang/String; = "supported"

.field private static final CAP_UNAVAILABLE:Ljava/lang/String; = "false"

.field private static final DEVICE_CAP_MOBILITY:Ljava/lang/String; = "mobility"

.field private static final LANGUAGE:Ljava/lang/String; = "lang"

.field private static final LOG_TAG:Ljava/lang/String; = "XDM-WRAPPER"

.field private static final MEDIA_CAP_AUDIO:Ljava/lang/String; = "audio"

.field private static final MEDIA_CAP_DUPLEX:Ljava/lang/String; = "duplex"

.field private static final MEDIA_CAP_FULL_DUPLEX:Ljava/lang/String; = "full"

.field private static final MEDIA_CAP_VIDEO:Ljava/lang/String; = "video"

.field private static final XML_NS:Ljava/lang/String; = "xml"

.field private static mMediaCapabilities:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/XmlElement;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 69
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->mMediaCapabilities:Landroid/util/LongSparseArray;

    .line 72
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v1, v1

    new-instance v3, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v4, "audio"

    const-string/jumbo v5, "true"

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v7, "video"

    const-string v8, "false"

    invoke-direct {v6, v7, v8}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v10, "full"

    invoke-direct {v9, v10}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v12, "supported"

    invoke-direct {v11, v12}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v9, v11}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v9

    new-instance v11, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v13, "duplex"

    invoke-direct {v11, v13}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v9

    filled-new-array {v3, v6, v9}, [Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v3

    .line 72
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->mMediaCapabilities:Landroid/util/LongSparseArray;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v1, v1

    new-instance v3, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v6, v7, v5}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v9, v10}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v11, v12}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v9, v11}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v9

    new-instance v11, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v11, v13}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v9

    filled-new-array {v3, v6, v9}, [Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v3

    .line 76
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 80
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->mMediaCapabilities:Landroid/util/LongSparseArray;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL:I

    int-to-long v1, v1

    new-instance v3, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v6, v7, v8}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v8, v10}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v9, v12}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v8, v9}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v8

    new-instance v9, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v9, v13}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v8

    filled-new-array {v3, v6, v8}, [Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v3

    .line 80
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 84
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->mMediaCapabilities:Landroid/util/LongSparseArray;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO:I

    int-to-long v1, v1

    new-instance v3, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v6, v7, v5}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v8, v10}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v9, v12}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v8, v9}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v8

    new-instance v9, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v9, v13}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v8

    filled-new-array {v3, v6, v8}, [Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v3

    .line 84
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 88
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->mMediaCapabilities:Landroid/util/LongSparseArray;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    int-to-long v1, v1

    new-instance v3, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v4, v7, v5}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v5, v10}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v6, v12}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v5

    new-instance v6, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v6, v13}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v3

    .line 88
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceCapabilityElements(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/XmlElement;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    new-instance v2, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v2, v1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v3, "supported"

    invoke-direct {v1, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v3, "mobility"

    invoke-direct {v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->setParent(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getMediaCapabilityElements(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/XmlElement;",
            ">;"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->mMediaCapabilities:Landroid/util/LongSparseArray;

    long-to-int p0, p0

    int-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->mMediaCapabilities:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public static getTextElements(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/XmlElement;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 56
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 57
    new-instance v2, Lcom/sec/internal/constants/ims/XmlElement;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, "xml"

    const-string v4, "lang"

    invoke-virtual {v2, v4, v1, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_0
    new-instance v2, Lcom/sec/internal/constants/ims/XmlElement;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, p0, v1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
