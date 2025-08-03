.class public Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;
.super Ljava/lang/Object;
.source "ImIconData.java"


# instance fields
.field private mIconLocation:Ljava/lang/String;

.field private final mIconType:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

.field private mIconUri:Ljava/lang/String;

.field private final mParticipant:Lcom/sec/ims/util/ImsUri;

.field private final mTimestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->mIconType:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    .line 28
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->mParticipant:Lcom/sec/ims/util/ImsUri;

    .line 29
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->mTimestamp:Ljava/util/Date;

    .line 30
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->mIconLocation:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->mIconUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 68
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 72
    :cond_2
    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    .line 73
    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->mIconLocation:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->mIconLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->mParticipant:Lcom/sec/ims/util/ImsUri;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->mParticipant:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2, v3}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->mTimestamp:Ljava/util/Date;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->mTimestamp:Ljava/util/Date;

    .line 74
    invoke-virtual {p0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public getIconLocation()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->mIconLocation:Ljava/lang/String;

    return-object p0
.end method

.method public getIconType()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->mIconType:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    return-object p0
.end method

.method public getIconUri()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->mIconUri:Ljava/lang/String;

    return-object p0
.end method

.method public getParticipant()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->mParticipant:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->mTimestamp:Ljava/util/Date;

    return-object p0
.end method

.method public setIconLocation(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->mIconLocation:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImIconData [mIconType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->mIconType:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mParticipant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->mParticipant:Lcom/sec/ims/util/ImsUri;

    .line 81
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->mTimestamp:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIconLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->mIconLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIconUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->mIconUri:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
