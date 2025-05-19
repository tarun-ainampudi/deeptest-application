.class Lcom/coui/appcompat/util/COUIDarkModeHelper$1;
.super Landroid/database/ContentObserver;
.source "COUIDarkModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/util/COUIDarkModeHelper;->initObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/util/COUIDarkModeHelper;

.field final synthetic val$mServerContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/util/COUIDarkModeHelper;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/util/COUIDarkModeHelper;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 178
    iput-object p1, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper$1;->this$0:Lcom/coui/appcompat/util/COUIDarkModeHelper;

    iput-object p3, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper$1;->val$mServerContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .line 181
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 182
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper$1;->this$0:Lcom/coui/appcompat/util/COUIDarkModeHelper;

    iget-object v1, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper$1;->val$mServerContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "DarkMode_DialogBgMaxL"

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/util/COUIDarkModeHelper;->access$002(Lcom/coui/appcompat/util/COUIDarkModeHelper;F)F

    .line 184
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper$1;->this$0:Lcom/coui/appcompat/util/COUIDarkModeHelper;

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIDarkModeHelper;->access$100(Lcom/coui/appcompat/util/COUIDarkModeHelper;)V

    .line 185
    return-void
.end method
