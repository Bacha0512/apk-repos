.class public final enum Lcom/tapjoy/internal/gl$i;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/dp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "i"
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/gl$i;

.field public static final enum b:Lcom/tapjoy/internal/gl$i;

.field public static final enum c:Lcom/tapjoy/internal/gl$i;

.field public static final enum d:Lcom/tapjoy/internal/gl$i;

.field private static f:Lcom/tapjoy/internal/dp$b;

.field private static final synthetic g:[Lcom/tapjoy/internal/gl$i;


# instance fields
.field final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/tapjoy/internal/gl$i;

    const-string v1, "APP"

    invoke-direct {v0, v1, v2, v2}, Lcom/tapjoy/internal/gl$i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/internal/gl$i;->a:Lcom/tapjoy/internal/gl$i;

    .line 23
    new-instance v0, Lcom/tapjoy/internal/gl$i;

    const-string v1, "CAMPAIGN"

    invoke-direct {v0, v1, v3, v3}, Lcom/tapjoy/internal/gl$i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/internal/gl$i;->b:Lcom/tapjoy/internal/gl$i;

    .line 27
    new-instance v0, Lcom/tapjoy/internal/gl$i;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v4, v4}, Lcom/tapjoy/internal/gl$i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/internal/gl$i;->c:Lcom/tapjoy/internal/gl$i;

    .line 31
    new-instance v0, Lcom/tapjoy/internal/gl$i;

    const-string v1, "USAGES"

    invoke-direct {v0, v1, v5, v5}, Lcom/tapjoy/internal/gl$i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/internal/gl$i;->d:Lcom/tapjoy/internal/gl$i;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tapjoy/internal/gl$i;

    sget-object v1, Lcom/tapjoy/internal/gl$i;->a:Lcom/tapjoy/internal/gl$i;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tapjoy/internal/gl$i;->b:Lcom/tapjoy/internal/gl$i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tapjoy/internal/gl$i;->c:Lcom/tapjoy/internal/gl$i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tapjoy/internal/gl$i;->d:Lcom/tapjoy/internal/gl$i;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tapjoy/internal/gl$i;->g:[Lcom/tapjoy/internal/gl$i;

    .line 69
    new-instance v0, Lcom/tapjoy/internal/gl$i$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$i$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gl$i;->f:Lcom/tapjoy/internal/dp$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Lcom/tapjoy/internal/gl$i;->e:I

    .line 80
    return-void
.end method

.method public static a(I)Lcom/tapjoy/internal/gl$i;
    .locals 1

    .prologue
    .line 55
    packed-switch p0, :pswitch_data_0

    .line 60
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 56
    :pswitch_0
    sget-object v0, Lcom/tapjoy/internal/gl$i;->a:Lcom/tapjoy/internal/gl$i;

    goto :goto_0

    .line 57
    :pswitch_1
    sget-object v0, Lcom/tapjoy/internal/gl$i;->b:Lcom/tapjoy/internal/gl$i;

    goto :goto_0

    .line 58
    :pswitch_2
    sget-object v0, Lcom/tapjoy/internal/gl$i;->c:Lcom/tapjoy/internal/gl$i;

    goto :goto_0

    .line 59
    :pswitch_3
    sget-object v0, Lcom/tapjoy/internal/gl$i;->d:Lcom/tapjoy/internal/gl$i;

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/gl$i;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/tapjoy/internal/gl$i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gl$i;

    return-object v0
.end method

.method public static values()[Lcom/tapjoy/internal/gl$i;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/tapjoy/internal/gl$i;->g:[Lcom/tapjoy/internal/gl$i;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/gl$i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/gl$i;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/tapjoy/internal/gl$i;->e:I

    return v0
.end method
