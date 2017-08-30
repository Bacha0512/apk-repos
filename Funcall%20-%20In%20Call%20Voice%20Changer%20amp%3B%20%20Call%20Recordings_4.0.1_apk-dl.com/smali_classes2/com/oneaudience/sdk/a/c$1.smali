.class final Lcom/oneaudience/sdk/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oneaudience/sdk/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneaudience/sdk/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final a:[I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oneaudience/sdk/a/c$1;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x63
        0x6d
        0x56
        0x73
        0x5a
        0x57
        0x46
        0x7a
        0x5a
        0x53
        0x42
        0x30
        0x61
        0x47
        0x55
        0x67
        0x61
        0x47
        0x39
        0x31
        0x62
        0x6d
        0x52
        0x7a
    .end array-data
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "oneaudience"

    return-object v0
.end method
