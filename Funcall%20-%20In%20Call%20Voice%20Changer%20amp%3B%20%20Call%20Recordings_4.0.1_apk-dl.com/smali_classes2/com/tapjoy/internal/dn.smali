.class public final Lcom/tapjoy/internal/dn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Z

.field private static final c:Lcom/tapjoy/internal/dn;


# instance fields
.field private final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    sput-boolean v1, Lcom/tapjoy/internal/dn;->a:Z

    .line 159
    new-instance v0, Lcom/tapjoy/internal/dn;

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/dn;-><init>(B)V

    sput-object v0, Lcom/tapjoy/internal/dn;->c:Lcom/tapjoy/internal/dn;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/dn;->b:Ljava/util/Map;

    .line 141
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/dn;->b:Ljava/util/Map;

    .line 158
    return-void
.end method

.method public static a()Lcom/tapjoy/internal/dn;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/tapjoy/internal/dn;->c:Lcom/tapjoy/internal/dn;

    return-object v0
.end method
