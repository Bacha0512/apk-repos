.class public final Lcom/weirdvoice/ui/messages/MessageAdapter$MessageListItemViews;
.super Ljava/lang/Object;
.source "MessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/messages/MessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageListItemViews"
.end annotation


# instance fields
.field public containterBlock:Landroid/widget/LinearLayout;

.field contentView:Landroid/widget/TextView;

.field dateView:Landroid/widget/TextView;

.field deliveredIndicator:Landroid/widget/ImageView;

.field errorView:Landroid/widget/TextView;

.field quickContactView:Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
