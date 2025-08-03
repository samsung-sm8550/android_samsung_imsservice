.class public Lcom/sec/internal/ims/core/iil/IilImsPreference;
.super Ljava/lang/Object;
.source "IilImsPreference.java"


# static fields
.field private static final IMS_PREFERENCE_NUMBERS:I = 0xe


# instance fields
.field private eccPreference:B

.field private enableSmsFallback:B

.field private enableSmsOverIms:B

.field private enableSmsWriteUicc:B

.field private eutranDomain:B

.field private imsSupportType:B

.field private smsFormat:B

.field private srvccVersion:B

.field private ssCsfb:B

.field private ssDomain:B

.field private supportVolteRoaming:B

.field private ussdDomain:B

.field private utranDomain:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput-byte v0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->smsFormat:B

    .line 25
    iput-byte v0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->enableSmsOverIms:B

    .line 26
    iput-byte v0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->enableSmsWriteUicc:B

    .line 27
    iput-byte v0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->enableSmsFallback:B

    .line 28
    iput-byte v0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->eutranDomain:B

    .line 29
    iput-byte v0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->utranDomain:B

    .line 30
    iput-byte v0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->ssDomain:B

    .line 31
    iput-byte v0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->ussdDomain:B

    .line 32
    iput-byte v0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->eccPreference:B

    .line 33
    iput-byte v0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->ssCsfb:B

    .line 34
    iput-byte v0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->imsSupportType:B

    .line 35
    iput-byte v0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->srvccVersion:B

    .line 36
    iput-byte v0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->supportVolteRoaming:B

    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->smsFormat:B

    .line 41
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->enableSmsOverIms:B

    .line 42
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->enableSmsWriteUicc:B

    .line 43
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->enableSmsFallback:B

    .line 44
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->eutranDomain:B

    .line 45
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->utranDomain:B

    .line 46
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->ssDomain:B

    .line 47
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->ussdDomain:B

    .line 48
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->eccPreference:B

    .line 49
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->ssCsfb:B

    .line 50
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->imsSupportType:B

    .line 51
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->srvccVersion:B

    .line 52
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->supportVolteRoaming:B

    return-void
.end method

.method public static toByteArray(Lcom/sec/internal/ims/core/iil/IilImsPreference;I)[B
    .locals 2

    .line 145
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 147
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->getSmsFormat()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 148
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->getSmsOverIms()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 149
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->getSmsWriteUicc()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 150
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->getSmsFallbackPreference()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 151
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->getEutranDomain()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 152
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->getUtranDomain()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 153
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->getSsDomain()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 154
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->getUssdDomain()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 155
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->getEccPreference()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 156
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->getSsCsfb()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 157
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->getImsSupportType()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 158
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->getSrvccVersion()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 159
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->getSupportVolteRoaming()B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte p0, p1

    .line 160
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 161
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getEccPreference()B
    .locals 0

    .line 124
    iget-byte p0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->eccPreference:B

    return p0
.end method

.method public getEutranDomain()B
    .locals 0

    .line 112
    iget-byte p0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->eutranDomain:B

    return p0
.end method

.method public getImsSupportType()B
    .locals 0

    .line 132
    iget-byte p0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->imsSupportType:B

    return p0
.end method

.method public getSmsFallbackPreference()B
    .locals 0

    .line 109
    iget-byte p0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->enableSmsFallback:B

    return p0
.end method

.method public getSmsFormat()B
    .locals 0

    .line 100
    iget-byte p0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->smsFormat:B

    return p0
.end method

.method public getSmsOverIms()B
    .locals 0

    .line 103
    iget-byte p0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->enableSmsOverIms:B

    return p0
.end method

.method public getSmsWriteUicc()B
    .locals 0

    .line 106
    iget-byte p0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->enableSmsWriteUicc:B

    return p0
.end method

.method public getSrvccVersion()B
    .locals 0

    .line 136
    iget-byte p0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->srvccVersion:B

    return p0
.end method

.method public getSsCsfb()B
    .locals 0

    .line 128
    iget-byte p0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->ssCsfb:B

    return p0
.end method

.method public getSsDomain()B
    .locals 0

    .line 118
    iget-byte p0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->ssDomain:B

    return p0
.end method

.method public getSupportVolteRoaming()B
    .locals 0

    .line 140
    iget-byte p0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->supportVolteRoaming:B

    return p0
.end method

.method public getUssdDomain()B
    .locals 0

    .line 121
    iget-byte p0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->ussdDomain:B

    return p0
.end method

.method public getUtranDomain()B
    .locals 0

    .line 115
    iget-byte p0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->utranDomain:B

    return p0
.end method

.method public setEccPreference(B)V
    .locals 0

    .line 80
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->eccPreference:B

    return-void
.end method

.method public setEutranDomain(B)V
    .locals 0

    .line 68
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->eutranDomain:B

    return-void
.end method

.method public setImsSupportType(B)V
    .locals 0

    .line 88
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->imsSupportType:B

    return-void
.end method

.method public setSmsFallbackPreference(B)V
    .locals 0

    .line 65
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->enableSmsFallback:B

    return-void
.end method

.method public setSmsFormat(B)V
    .locals 0

    .line 56
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->smsFormat:B

    return-void
.end method

.method public setSmsOverIms(B)V
    .locals 0

    .line 59
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->enableSmsOverIms:B

    return-void
.end method

.method public setSmsWriteUicc(B)V
    .locals 0

    .line 62
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->enableSmsWriteUicc:B

    return-void
.end method

.method public setSrvccVersion(B)V
    .locals 0

    .line 92
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->srvccVersion:B

    return-void
.end method

.method public setSsCsfb(B)V
    .locals 0

    .line 84
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->ssCsfb:B

    return-void
.end method

.method public setSsDomain(B)V
    .locals 0

    .line 74
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->ssDomain:B

    return-void
.end method

.method public setSupportVolteRoaming(B)V
    .locals 0

    .line 96
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->supportVolteRoaming:B

    return-void
.end method

.method public setUssdDomain(B)V
    .locals 0

    .line 77
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->ussdDomain:B

    return-void
.end method

.method public setUtranDomain(B)V
    .locals 0

    .line 71
    iput-byte p1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->utranDomain:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "smsFormat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->smsFormat:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enableSmsOverIms "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->enableSmsOverIms:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enableSmsWriteUicc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->enableSmsWriteUicc:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enableSmsFallback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->enableSmsFallback:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " eutranDomain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->eutranDomain:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " utranDomain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->utranDomain:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ssDomain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->ssDomain:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ussdDomain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->ussdDomain:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " eccPreference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->eccPreference:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ssCsfb "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->ssCsfb:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " imsSupportType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->imsSupportType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " srvccVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->srvccVersion:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " supportVolteRoaming "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lcom/sec/internal/ims/core/iil/IilImsPreference;->supportVolteRoaming:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
