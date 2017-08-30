.class public abstract Lcom/tapjoy/internal/fg;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/tapjoy/internal/fg;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/fg;->a:Lcom/tapjoy/internal/fg;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/internal/fg;->a:Lcom/tapjoy/internal/fg;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/fg;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/app/Activity;)V
.end method
