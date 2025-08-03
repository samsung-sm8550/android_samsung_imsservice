.class public final Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
.super Ljava/lang/Object;
.source "EucMessageKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEucId:Ljava/lang/String;

.field private mEucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

.field private mOwnIdentity:Ljava/lang/String;

.field private mRemoteUri:Lcom/sec/ims/util/ImsUri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey$1;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey$1;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucId:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mOwnIdentity:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 77
    sget-object v0, Lcom/sec/ims/util/ImsUri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/util/ImsUri;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucId:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mOwnIdentity:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 70
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    return-void
.end method

.method public static unmarshall([B)Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .locals 3

    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 144
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 145
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 146
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    .line 147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 83
    const-class v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 85
    :cond_1
    check-cast p1, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    .line 87
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mOwnIdentity:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mOwnIdentity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 88
    invoke-virtual {p0, p1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getEucId()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucId:Ljava/lang/String;

    return-object p0
.end method

.method public getEucType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    return-object p0
.end method

.method public getOwnIdentity()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mOwnIdentity:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 94
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mOwnIdentity:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 95
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 96
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public marshall()[B
    .locals 2

    .line 129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->writeToParcel(Landroid/os/Parcel;I)V

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    .line 132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EucMessageKey[mEucId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mOwnIdentity=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mOwnIdentity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mEucType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mRemoteUri=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mOwnIdentity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mEucType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 120
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
