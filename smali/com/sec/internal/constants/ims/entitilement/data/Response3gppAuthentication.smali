.class public Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;
.super Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;
.source "Response3gppAuthentication.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public akaChallenge:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aka-challenge"
    .end annotation
.end field

.field public akaToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aka-token"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication$1;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication$1;-><init>()V

    sput-object v0, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;-><init>(Landroid/os/Parcel;)V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;->akaChallenge:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;->akaToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2}, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 32
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;->akaChallenge:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;->akaToken:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
