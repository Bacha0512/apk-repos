.class public abstract Lcom/digits/sdk/android/ap;
.super Landroid/widget/CursorAdapter;


# instance fields
.field a:Lcom/digits/sdk/android/al;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/digits/sdk/android/al;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object p2, p0, Lcom/digits/sdk/android/ap;->a:Lcom/digits/sdk/android/al;

    return-void
.end method


# virtual methods
.method public a(Lcom/digits/sdk/android/al;)Landroid/database/Cursor;
    .locals 1

    iput-object p1, p0, Lcom/digits/sdk/android/ap;->a:Lcom/digits/sdk/android/al;

    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Landroid/content/Context;Lcom/digits/sdk/android/al;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public a()Lcom/digits/sdk/android/al;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/ap;->a:Lcom/digits/sdk/android/al;

    return-object v0
.end method

.method public abstract a(Landroid/view/View;Landroid/content/Context;Lcom/digits/sdk/android/al;)V
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    check-cast p3, Lcom/digits/sdk/android/al;

    invoke-virtual {p0, p1, p2, p3}, Lcom/digits/sdk/android/ap;->a(Landroid/view/View;Landroid/content/Context;Lcom/digits/sdk/android/al;)V

    return-void
.end method

.method public synthetic getCursor()Landroid/database/Cursor;
    .locals 1

    invoke-virtual {p0}, Lcom/digits/sdk/android/ap;->a()Lcom/digits/sdk/android/al;

    move-result-object v0

    return-object v0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    check-cast p2, Lcom/digits/sdk/android/al;

    invoke-virtual {p0, p1, p2, p3}, Lcom/digits/sdk/android/ap;->a(Landroid/content/Context;Lcom/digits/sdk/android/al;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
