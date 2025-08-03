.class public final Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;
.super Ljava/lang/Object;
.source "SoftphoneContract.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$CommonColumns;
.implements Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$AccountColumns;


# static fields
.field public static final ACCESS_OBTAINED:I = 0x2

.field public static final ACTIVATE:Ljava/lang/String; = "activate"

.field public static final ACTIVE_ACCOUNT:Ljava/lang/String; = "active_account"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEACTIVATE:Ljava/lang/String; = "deactivate"

.field public static final DEREGISTERED:I = 0x4

.field public static final FULL_FUNCTIONAL_ACCOUNT:Ljava/lang/String; = "full_functional_account"

.field public static final INACTIVE:I = 0x0

.field public static final MANUAL_DEREGISTERED:I = 0x3

.field public static final PENDING_ACCOUNT:Ljava/lang/String; = "pending_account"

.field public static final REGISTER:Ljava/lang/String; = "register"

.field public static final REGISTERED:I = 0x5

.field public static final REGISTERED_ACCOUNT:Ljava/lang/String; = "registered_account"

.field public static final TABLE_NAME:Ljava/lang/String; = "account"

.field public static final TGUARD_OBTAINED:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 251
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildAccountIdUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 341
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "account_id"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final buildAccountIdUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 2

    .line 349
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "account_id"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final buildAccountLabelUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 381
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "label"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final buildAccountLabelUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 2

    .line 390
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "label"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final buildAccountUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 334
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "impi"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final buildActivateAccountUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 357
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "activate"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final buildActiveAccountMumUri(J)Landroid/net/Uri;
    .locals 2

    .line 304
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "active_account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final buildActiveAccountUri()Landroid/net/Uri;
    .locals 2

    .line 296
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "active_account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildDeActivateAccountUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 365
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "deactivate"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final buildFunctionalAccountUri()Landroid/net/Uri;
    .locals 2

    .line 320
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "full_functional_account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildPendingAccountUri(J)Landroid/net/Uri;
    .locals 2

    .line 313
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "pending_account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final buildRegisteredAccountUri()Landroid/net/Uri;
    .locals 2

    .line 327
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "registered_account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildRegisteredAccountUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 373
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "register"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
