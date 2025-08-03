.class public final Lcom/sec/internal/constants/tapi/UserConsentProviderContract$UserConsentList;
.super Ljava/lang/Object;
.source "UserConsentProviderContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field static final ACCEPT_BUTTON_LABEL:Ljava/lang/String; = "ACCEPT_BUTTON"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ID:Ljava/lang/String; = "ID"

.field protected static final PROJECTION_ALL:[Ljava/lang/String;

.field static final REJECT_BUTTON_LABEL:Ljava/lang/String; = "REJECT_BUTTON"

.field public static final REMOTE_URI:Ljava/lang/String; = "REMOTE_URI"

.field public static final ROWID:Ljava/lang/String; = "ROWID"

.field public static final SORT_ORDER_DEFAULT:Ljava/lang/String; = "TIMESTAMP DESC"

.field public static final STATE:Ljava/lang/String; = "STATE"

.field static final SUBJECT_LABEL:Ljava/lang/String; = "SUBJECT"

.field public static final SUBSCRIBER_IDENTITY:Ljava/lang/String; = "SUBSCRIBER_IDENTITY"

.field static final TEXT_LABEL:Ljava/lang/String; = "TEXT"

.field public static final TIMESTAMP:Ljava/lang/String; = "TIMESTAMP"

.field public static final TYPE:Ljava/lang/String; = "TYPE"


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 136
    sget-object v0, Lcom/sec/internal/constants/tapi/UserConsentProviderContract;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/internal/constants/tapi/UserConsentProviderContract$UserConsentList;->CONTENT_URI:Landroid/net/Uri;

    .line 228
    const-string v10, "REMOTE_URI"

    const-string v11, "SUBSCRIBER_IDENTITY"

    const-string v1, "ROWID"

    const-string v2, "ID"

    const-string v3, "TIMESTAMP"

    const-string v4, "STATE"

    const-string v5, "TYPE"

    const-string v6, "SUBJECT"

    const-string v7, "TEXT"

    const-string v8, "ACCEPT_BUTTON"

    const-string v9, "REJECT_BUTTON"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/tapi/UserConsentProviderContract$UserConsentList;->PROJECTION_ALL:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
