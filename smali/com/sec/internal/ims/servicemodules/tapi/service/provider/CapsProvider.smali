.class public Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;
.super Landroid/content/ContentProvider;
.source "CapsProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final RCSAPI:I = 0x2

.field private static final RCSAPI_ID:I = 0x1

.field private static final RCSAPI_OWN:I = 0x3

.field public static final SERVICE_PROJECTION:[Ljava/lang/String;

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mService:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 32
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->LOG_TAG:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilitiesLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->AUTHORITY:Ljava/lang/String;

    .line 38
    const-string v9, "automata"

    const-string/jumbo v10, "timestamp"

    const-string v1, "_id"

    const-string v2, "contact"

    const-string v3, "capability_image_sharing"

    const-string v4, "capability_video_sharing"

    const-string v5, "capability_im_session"

    const-string v6, "capability_file_transfer"

    const-string v7, "capability_geoloc_push"

    const-string v8, "capability_extensions"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->SERVICE_PROJECTION:[Ljava/lang/String;

    .line 56
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 57
    const-string v2, "capability/*"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    const-string v2, "capability"

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    const-string v2, "capability/own"

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->mService:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    return-void
.end method


# virtual methods
.method buildCursor(Ljava/lang/String;Lcom/gsma/services/rcs/capability/Capabilities;Landroid/database/MatrixCursor;)V
    .locals 15

    move-object/from16 v0, p2

    .line 151
    invoke-virtual/range {p2 .. p2}, Lcom/gsma/services/rcs/capability/Capabilities;->getSupportedExtensions()Ljava/util/Set;

    move-result-object v1

    .line 152
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_1

    .line 160
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v12, v1

    .line 162
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v1, 0x8

    .line 163
    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/capability/Capabilities;->hasCapabilities(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v1, 0x10

    .line 164
    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/capability/Capabilities;->hasCapabilities(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v1, 0x2

    .line 165
    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/capability/Capabilities;->hasCapabilities(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 166
    invoke-virtual {v0, v3}, Lcom/gsma/services/rcs/capability/Capabilities;->hasCapabilities(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v1, 0x4

    .line 167
    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/capability/Capabilities;->hasCapabilities(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 168
    invoke-virtual/range {p2 .. p2}, Lcom/gsma/services/rcs/capability/Capabilities;->isAutomata()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 169
    invoke-virtual/range {p2 .. p2}, Lcom/gsma/services/rcs/capability/Capabilities;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v6, p1

    filled-new-array/range {v5 .. v14}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, p3

    .line 162
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 140
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 135
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public onCreate()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p2, 0x1

    move p3, p2

    .line 71
    :goto_0
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->mService:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 72
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->getCapService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->mService:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    if-nez p4, :cond_1

    return-object p3

    .line 79
    :cond_1
    sget-object p4, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p4

    if-eq p4, p2, :cond_6

    const/4 p2, 0x2

    if-eq p4, p2, :cond_4

    const/4 p2, 0x3

    if-eq p4, p2, :cond_2

    goto/16 :goto_2

    .line 110
    :cond_2
    :try_start_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->mService:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->getMyCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object p2
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_3

    return-object p3

    .line 118
    :cond_3
    new-instance p3, Landroid/database/MatrixCursor;

    sget-object p4, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {p3, p4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->buildCursor(Ljava/lang/String;Lcom/gsma/services/rcs/capability/Capabilities;Landroid/database/MatrixCursor;)V

    goto :goto_2

    :catch_0
    move-exception p0

    .line 112
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object p3

    .line 97
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->mService:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->getAllContactCapabilities()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_5

    return-object p3

    .line 101
    :cond_5
    new-instance p3, Landroid/database/MatrixCursor;

    sget-object p2, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {p3, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 102
    sget-object p2, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "capMap.size() = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/gsma/services/rcs/capability/Capabilities;

    .line 105
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2, p4, p3}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->buildCursor(Ljava/lang/String;Lcom/gsma/services/rcs/capability/Capabilities;Landroid/database/MatrixCursor;)V

    goto :goto_1

    .line 85
    :cond_6
    :try_start_1
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->mService:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    new-instance p4, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p5}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->getContactCapabilities(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object p2
    :try_end_1
    .catch Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p2, :cond_7

    return-object p3

    .line 93
    :cond_7
    new-instance p3, Landroid/database/MatrixCursor;

    sget-object p4, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {p3, p4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/CapsProvider;->buildCursor(Ljava/lang/String;Lcom/gsma/services/rcs/capability/Capabilities;Landroid/database/MatrixCursor;)V

    :cond_8
    :goto_2
    return-object p3

    :catch_1
    move-exception p0

    .line 87
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object p3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 144
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
