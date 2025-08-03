.class Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "ByteArrayDataSource.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuf()[B
    .locals 0

    .line 65
    iget-object p0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    return-object p0
.end method

.method public getCount()I
    .locals 0

    .line 69
    iget p0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    return p0
.end method
