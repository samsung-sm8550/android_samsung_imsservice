.class public Lcom/sec/internal/ims/settings/DebugConfigStorage;
.super Ljava/lang/Object;
.source "DebugConfigStorage.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sec/internal/ims/settings/DebugConfigStorage;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public insert(ILandroid/content/ContentValues;)V
    .locals 1

    .line 25
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DebugConfigStorage;->mContext:Landroid/content/Context;

    const-string v0, "Debug_config"

    invoke-static {p1, p0, v0, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->put(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public query(I[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DebugConfigStorage;->mContext:Landroid/content/Context;

    const-string v0, "Debug_config"

    invoke-static {p1, p0, v0, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getStringArray(ILandroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 34
    new-instance p1, Landroid/database/MatrixCursor;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 35
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    return-object p1
.end method
