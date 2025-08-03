.class public Lcom/sec/internal/constants/ims/updater/StubUrlConstants;
.super Ljava/lang/Object;
.source "StubUrlConstants.java"


# static fields
.field protected static mInstanceForRegion:Lcom/sec/internal/constants/ims/updater/StubUrlConstants$IStubUrlConstantsForRegion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/sec/internal/constants/ims/updater/StubUrlConstantsForRegion;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/updater/StubUrlConstantsForRegion;-><init>()V

    sput-object v0, Lcom/sec/internal/constants/ims/updater/StubUrlConstants;->mInstanceForRegion:Lcom/sec/internal/constants/ims/updater/StubUrlConstants$IStubUrlConstantsForRegion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProdGetDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/sec/internal/constants/ims/updater/StubUrlConstants;->mInstanceForRegion:Lcom/sec/internal/constants/ims/updater/StubUrlConstants$IStubUrlConstantsForRegion;

    invoke-interface {v0}, Lcom/sec/internal/constants/ims/updater/StubUrlConstants$IStubUrlConstantsForRegion;->getProdGetDownloadUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProdUpdateCheckUrl()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/sec/internal/constants/ims/updater/StubUrlConstants;->mInstanceForRegion:Lcom/sec/internal/constants/ims/updater/StubUrlConstants$IStubUrlConstantsForRegion;

    invoke-interface {v0}, Lcom/sec/internal/constants/ims/updater/StubUrlConstants$IStubUrlConstantsForRegion;->getProdUpdateCheckUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStgGetDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lcom/sec/internal/constants/ims/updater/StubUrlConstants;->mInstanceForRegion:Lcom/sec/internal/constants/ims/updater/StubUrlConstants$IStubUrlConstantsForRegion;

    invoke-interface {v0}, Lcom/sec/internal/constants/ims/updater/StubUrlConstants$IStubUrlConstantsForRegion;->getStgGetDownloadUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStgUpdateCheckUrl()Ljava/lang/String;
    .locals 1

    .line 7
    sget-object v0, Lcom/sec/internal/constants/ims/updater/StubUrlConstants;->mInstanceForRegion:Lcom/sec/internal/constants/ims/updater/StubUrlConstants$IStubUrlConstantsForRegion;

    invoke-interface {v0}, Lcom/sec/internal/constants/ims/updater/StubUrlConstants$IStubUrlConstantsForRegion;->getStgUpdateCheckUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isOAIDUsedForExtuk()Z
    .locals 1

    .line 23
    sget-object v0, Lcom/sec/internal/constants/ims/updater/StubUrlConstants;->mInstanceForRegion:Lcom/sec/internal/constants/ims/updater/StubUrlConstants$IStubUrlConstantsForRegion;

    invoke-interface {v0}, Lcom/sec/internal/constants/ims/updater/StubUrlConstants$IStubUrlConstantsForRegion;->isOAIDUsedForExtuk()Z

    move-result v0

    return v0
.end method
