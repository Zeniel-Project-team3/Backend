from typing import Any

from pydantic import BaseModel, Field


class AiRequestDto(BaseModel):
    clientId: int
    topK: int = Field(default=5, ge=1, le=20)


class SimilarCaseDto(BaseModel):
    clientId: int
    score: float
    desiredJob: str | None = None
    competency: str | None = None
    education: str | None = None
    major: str | None = None
    university: str | None = None
    address: str | None = None
    jobTitle: str | None = None
    companyName: str | None = None
    salary: int | None = None
    trainings: list[str] = Field(default_factory=list)
    consultationSummary: str | None = None


class AiRecommendationDto(BaseModel):
    recommendedTrainings: list[str] = Field(default_factory=list)
    recommendedJobs: list[str] = Field(default_factory=list)
    recommendedCompanies: list[str] = Field(default_factory=list)
    expectedSalaryRange: str | None = None
    suggestedServices: list[str] = Field(default_factory=list)
    coreQuestions: list[str] = Field(default_factory=list)
    reason: str | None = None


class AiResponseDto(BaseModel):
    clientId: int
    maskedInput: dict[str, Any]
    queryText: str
    similarCases: list[SimilarCaseDto] = Field(default_factory=list)
    recommendation: AiRecommendationDto


class ReEmbeddingResponseDto(BaseModel):
    updatedCount: int


class IngestResponseDto(BaseModel):
    clientsMatched: int
    employmentInserted: int
    trainingInserted: int
    consultationInserted: int
