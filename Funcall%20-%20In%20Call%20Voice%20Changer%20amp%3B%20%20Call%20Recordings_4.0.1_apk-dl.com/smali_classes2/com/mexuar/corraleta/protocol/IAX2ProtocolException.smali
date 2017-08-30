.class public Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;
.super Ljava/io/IOException;
.source "IAX2ProtocolException.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "p0"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method
