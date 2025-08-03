.class public Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;
.super Ljava/lang/Object;
.source "GlsValidityTime.java"


# instance fields
.field private final mTimeZone:I

.field private final mValidityDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->mValidityDate:Ljava/util/Date;

    .line 17
    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v0, 0xf

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr v0, p1

    neg-int p1, v0

    const v0, 0xea60

    div-int/2addr p1, v0

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->mTimeZone:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;I)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->mValidityDate:Ljava/util/Date;

    .line 27
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->mTimeZone:I

    return-void
.end method


# virtual methods
.method public getTimeZone()I
    .locals 0

    .line 41
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->mTimeZone:I

    return p0
.end method

.method public getValidityDate()Ljava/util/Date;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->mValidityDate:Ljava/util/Date;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Validity DateTime("

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "date="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->mValidityDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time zone="

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->mTimeZone:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
